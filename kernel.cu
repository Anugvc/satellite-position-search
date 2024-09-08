
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>
#include "common_include.h"

extern "C" void createPositionVector(sat_pos_st  *d_sat_pos, satellite_st *d_satllites, int numSatellites, int time_mins);
extern "C" void transformlla(sat_pos_st * d_sat_pos, int numSatellites, int time_mins);



__device__ int global_head = -1;
__device__ int global_tail = -1;
__device__ int global_free = 0;

// Helper function to initialize the linked list nodes
__global__ void initLinkedListNodes(LinkedListNode* nodes, int n) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < n) {
        nodes[idx].next = idx + 1;
    }
    if (idx == n - 1) {
        nodes[idx].next = -1;
    }
}

__device__ int allocateNode(LinkedListNode* nodes, int& free_list) {
    int new_node = -1;
    if (free_list != -1) {
        new_node = free_list;
        free_list = nodes[free_list].next;
    }
    return new_node;
}

__device__ void addNode(LinkedListNode* nodes, sat_pos_st data, int& head, int& tail, int& free_list) {
    int new_node = allocateNode(nodes, free_list);
    if (new_node != -1) {
        nodes[new_node].data = data;
        nodes[new_node].next = -1;

        if (tail != -1) {
            nodes[tail].next = new_node;
        }
        else {
            head = new_node;
        }
        tail = new_node;
    }
}

// CUDA kernel to search for satellites and store the indexes of satellites found, inside the structure array 'searchedSatData'
__global__ void searchSatellitesKernel(sat_pos_st* satelliteData, int numSatellites, int numMins, sat_pos_st* searchedSatData, point_st* region, unsigned  int* d_numSatInsideRegion) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < numSatellites * numMins) {
        //int satelliteID = satelliteData[idx].idx;
        //for (int i = 0; i < numSearchIDs; ++i) {
            
            int numPoints = 4; // Rectangle
            bool inside = false;

            double x = satelliteData[idx ].llh[1]; // longitude 
            double y = satelliteData[idx ].llh[0]; // latitude

            double p1x = region[0].longitude;
            double p1y = region[0].latitude;

            /*for (int i = 1; i < numPoints; ++i) {
                double p2x = region[i].longitude;
                double p2y = region[i].latitude;
                if (y > fmin(p1y, p2y)) {
                    if (y <= fmax(p1y, p2y)) {
                        if (x <= fmax(p1x, p2x)) {
                            double xinters;
                            if (p1y != p2y) {
                                xinters = (y - p1y) * (p2x - p1x) / (p2y - p1y) + p1x;
                            }
                            if (p1x == p2x || x <= xinters) {
                                inside = !inside;
                            }
                        }
                    }
                }
                p1x = p2x;
                p1y = p2y;
            }*/
            

            for (int i = 0, j = numPoints - 1; i < numPoints; j = i++) {
                double xi = region[i].longitude, yi = region[i].latitude;
                double xj = region[j].longitude, yj = region[j].latitude;

                bool intersect = ((yi > y) != (yj > y)) && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
                if (intersect) {
                    inside = !inside;
                }
            }

            /*if (idx == 0)
            {
                printf("lat[0]: %f long[0]: %f \n", satelliteData[idx].llh[0], satelliteData[idx].llh[1]);
            }*/

            //satelliteData[idx * numSearchIDs + i].isInsideRegion = inside;

            if (inside) // The position is inside the given region
            {
                int searchidx = atomicInc(d_numSatInsideRegion, 0xffffffff); // Will set to 0 if value > 0xffffff otherwise increment by 1
                searchedSatData[searchidx].idx = idx; //satelliteData[idx]; // store the result in searchedData array;
                //d_indexArray[*d_numSatInsideRegion]
                //if(idx > 10000 && idx < 10010)
                 //   printf("dnumsat = %u\n", *d_numSatInsideRegion);

                
            }
           
        //}
    }
    //__syncthreads();

    
}
/*
class Point {
public:
    double latitude;
    double longitude;

    Point(double lat, double lon) : latitude(lat), longitude(lon) {}
};

bool isPointInRegion(const std::vector<Point>& polygon, const Point& point) {
    
}
*/


extern "C" unsigned int searchSatellites(sat_pos_st * satelliteData, int numSatellite, int numMins, sat_pos_st* searchedSatData, point_st* region, unsigned int * numSatInsideRegion) {
    

    // Allocate host memory
    //SatelliteData* h_satelliteData = new SatelliteData[numSatellites];
    //int* h_searchIDs = new int[numSearchIDs];
    //LinkedListNode* h_nodes = new LinkedListNode[numSatellites];

    // Initialize host memory
    /*for (int i = 0; i < numSatellites; ++i) {
        h_satelliteData[i] = satelliteArray[i];
    }
    for (int i = 0; i < numSearchIDs; ++i) {
        h_searchIDs[i] = searchIDs[i];
    }
    */

    sat_pos_st* d_searchedSatData, * d_satelliteData;
    cudaError_t cudaStatus;

    std::cout << "Inside Kernel.." << std::endl;
    // Allocate device memory for searched satellite data
    cudaStatus = cudaMalloc((void**)&d_searchedSatData, sizeof(sat_pos_st) * numSatellite * numMins + 1);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMalloc failed in d_searchedSatData!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    //ALlocate device memory for satellite positions and copy satellite date from host to device
    cudaStatus = cudaMalloc((void**)&d_satelliteData, sizeof(sat_pos_st) * numSatellite * numMins);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMalloc failed in d_satelliteData!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }

    /*for (int i = 0; i < 5000; i = i + 1440)
    {
        std::cout << "inside kernel: " << satelliteData[i].llh[0] << std::endl;
    }*/
    cudaStatus = cudaMemcpy(d_satelliteData, satelliteData, sizeof(sat_pos_st) * numSatellite * numMins, cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed in satellitedata to d_satellitedata!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    /*cudaStatus = cudaMemcpy(satelliteData, d_satelliteData, sizeof(sat_pos_st) * numSatellite * numMins, cudaMemcpyDeviceToHost);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed in satellitedata to d_satellitedata!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    for (int i = 0; i < 5000; i = i + 1440)
    {
        std::cout << "inside kernel AFTER GPU COPY: " << satelliteData[i].llh[0] << std::endl;
    }*/

    // Allocate device memory for region to search and copy region from host to device
    point_st* d_region;
    cudaStatus = cudaMalloc((void**)&d_region, 4 * sizeof(point_st));
    if (cudaStatus != cudaSuccess) {
        printf("cudaMalloc failed in d_region!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    cudaStatus = cudaMemcpy(d_region, region, 4 * sizeof(point_st), cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed in region to d_region!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    unsigned int numsat = 0; // Initial value
    unsigned int* d_numSatInsideRegion; // Variable to store the total number of satellite positions found inside the region (will get incremented atomically inside the kernel)
    cudaStatus = cudaMalloc((void **)&d_numSatInsideRegion, sizeof(unsigned  int));
    if (cudaStatus != cudaSuccess) {
        printf("cudaMalloc failed in d_numSatInsideRegion!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    cudaStatus = cudaMemcpy(d_numSatInsideRegion, &numsat, sizeof(unsigned int), cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed in d_numSatInsideRegion!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    cudaDeviceSynchronize();
    //std::cout << "Numsat = " << numsat << std::endl;

    // Copy data from host to device
    //cudaMemcpy(d_satelliteData, h_satelliteData, numSatellites * sizeof(SatelliteData), cudaMemcpyHostToDevice);
    //cudaMemcpy(d_searchIDs, h_searchIDs, numSearchIDs * sizeof(int), cudaMemcpyHostToDevice);

    // Initialize the linked list nodes
    int blockSize = 1023;
    int numBlocks = ((numSatellite * numMins) + blockSize - 1) / blockSize;
    //initLinkedListNodes << <numBlocks, blockSize >> > (d_nodes, numSatellites);
    //cudaDeviceSynchronize();

    //unsigned int* h_numSat = (unsigned int*)malloc(sizeof(unsigned int));
    //cudaMemcpy(h_numSat, d_numSatInsideRegion, sizeof(unsigned int), cudaMemcpyDeviceToHost);

    //std::cout << "Total number of Satellite positions before calling kernel " << *h_numSat << std::endl;
    int* d_indexArray;
    cudaMalloc((void**)&d_indexArray, sizeof(int) * numSatellite * numMins);


    // Launch the kernel
    searchSatellitesKernel << <numBlocks, blockSize >> > (d_satelliteData, numSatellite, numMins, d_searchedSatData, d_region, d_numSatInsideRegion);
    cudaDeviceSynchronize();

    unsigned int*  h_numSat = (unsigned int*) malloc(sizeof(unsigned int));
    *h_numSat = 6;

    cudaStatus = cudaMemcpy(numSatInsideRegion, d_numSatInsideRegion, sizeof(unsigned int), cudaMemcpyDeviceToHost);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed for d_numSatInsideRegion to numSatInsideRegion!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;
        
    }
    cudaFree(d_satelliteData);
    cudaFree(d_region);

    std::cout << "Total number of Satellite positions inside the region: " << *numSatInsideRegion << std::endl;
    //*numSatInsideRegion = *h_numSat;

    std::cout << "Allocating memory: " << std::endl;
    searchedSatData = (sat_pos_st*)malloc(sizeof(sat_pos_st) * (*numSatInsideRegion) + 1);
    cudaStatus = cudaMemcpy(searchedSatData, d_searchedSatData, sizeof(sat_pos_st) * 10, cudaMemcpyDeviceToHost);
    if (cudaStatus != cudaSuccess) {
        printf("cudaMemcpy failed for d_satelliteData to d_satelliteData!\n");
        std::cout << cudaGetErrorString(cudaStatus) << std::endl;

    }
    if(*numSatInsideRegion != 0)
    /*for (int i = 1; i < 20; i++)
    {
        std::cout << "GPU RESULT: " << searchedSatData[i].idx << " " << searchedSatData[i].idx << " " << searchedSatData[i].idx << std::endl;
    }*/

    return (*numSatInsideRegion);

    // Copy result from device to host
    /*cudaMemcpy(h_nodes, d_nodes, numSatellites * sizeof(LinkedListNode), cudaMemcpyDeviceToHost);

    // Reconstruct the linked list on the host
    int head;
    cudaMemcpyFromSymbol(&head, global_head, sizeof(int), 0, cudaMemcpyDeviceToHost);
    while (head != -1) {
        linkedList.push_back(h_nodes[head]);
        head = h_nodes[head].next;
    }

    // Free device memory
    cudaFree(d_satelliteData);
    cudaFree(d_searchIDs);
    cudaFree(d_nodes);

    // Free host memory
    delete[] h_satelliteData;
    delete[] h_searchIDs;
    delete[] h_nodes;*/


}

/*
// CUDA kernel to populate the result array with satellite info for each minute of the day
__global__ void populateResults(const satellite_st* satellites, sat_pos_st* sat_pos, int numSatellites,int time_mins) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int totalMinutes = 1440; // Number of minutes in a day

    if (idx < numSatellites * totalMinutes) {
        int satIndex = idx / totalMinutes;
        int minuteOfDay = idx % totalMinutes;

        sat_pos[idx].idx = idx;
        sat_pos[idx].minuteOfDay = minuteOfDay;

        // Perform any additional calculations and populate other fields in ResultInfo as necessary
    }
}

// CUDA kernel to transform satellite ecef to lla
__global__ void transformllaKernel( sat_pos_st* sat_pos, int numSatellites, int time_mins) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    int totalMinutes = 1440; // Number of minutes in a day

    if (idx < numSatellites * totalMinutes) {
        int satIndex = idx / totalMinutes;
        int minuteOfDay = idx % totalMinutes;

        sat_pos[idx].idx = idx;
        sat_pos[idx].minuteOfDay = minuteOfDay;

        // Perform any additional calculations and populate other fields in ResultInfo as necessary
    }
}

extern "C" void createPositionVector(sat_pos_st *d_sat_pos, satellite_st *d_satllites, int numSatellites, int time_mins)
{
    // Launch kernel
    int threadsPerBlock = 256;
    int blocksPerGrid = (numSatellites * time_mins + threadsPerBlock - 1) / threadsPerBlock;

    populateResults<<<blocksPerGrid, threadsPerBlock >>>(d_satllites, d_sat_pos, numSatellites, time_mins);
    cudaDeviceSynchronize();
}

extern "C" void transformlla(sat_pos_st * d_sat_pos,  int numSatellites, int time_mins)
{
    // Launch kernel
    int threadsPerBlock = 256;
    int blocksPerGrid = (numSatellites * time_mins + threadsPerBlock - 1) / threadsPerBlock;

    transformllaKernel << <blocksPerGrid, threadsPerBlock >> > (d_sat_pos, numSatellites, time_mins);

    cudaDeviceSynchronize();
}





cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size);

__global__ void addKernel(int *c, const int *a, const int *b)
{
    int i = threadIdx.x;
    c[i] = a[i] + b[i];
}
*/

/*int main()
{
    const int arraySize = 5;
    const int a[arraySize] = { 1, 2, 3, 4, 5 };
    const int b[arraySize] = { 10, 20, 30, 40, 50 };
    int c[arraySize] = { 0 };

    // Add vectors in parallel.
    cudaError_t cudaStatus = addWithCuda(c, a, b, arraySize);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "addWithCuda failed!");
        return 1;
    }

    printf("{1,2,3,4,5} + {10,20,30,40,50} = {%d,%d,%d,%d,%d}\n",
        c[0], c[1], c[2], c[3], c[4]);

    // cudaDeviceReset must be called before exiting in order for profiling and
    // tracing tools such as Nsight and Visual Profiler to show complete traces.
    cudaStatus = cudaDeviceReset();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceReset failed!");
        return 1;
    }

    return 0;
}*/

// Helper function for using CUDA to add vectors in parallel.
cudaError_t addWithCuda(int *c, const int *a, const int *b, unsigned int size)
{
    int *dev_a = 0;
    int *dev_b = 0;
    int *dev_c = 0;
    cudaError_t cudaStatus;

    // Choose which GPU to run on, change this on a multi-GPU system.
    cudaStatus = cudaSetDevice(0);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaSetDevice failed!  Do you have a CUDA-capable GPU installed?");
        goto Error;
    }

    // Allocate GPU buffers for three vectors (two input, one output)    .
    cudaStatus = cudaMalloc((void**)&dev_c, size * sizeof(int));
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMalloc failed!");
        goto Error;
    }

    cudaStatus = cudaMalloc((void**)&dev_a, size * sizeof(int));
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMalloc failed!");
        goto Error;
    }

    cudaStatus = cudaMalloc((void**)&dev_b, size * sizeof(int));
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMalloc failed!");
        goto Error;
    }

    // Copy input vectors from host memory to GPU buffers.
    cudaStatus = cudaMemcpy(dev_a, a, size * sizeof(int), cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMemcpy failed!");
        goto Error;
    }

    cudaStatus = cudaMemcpy(dev_b, b, size * sizeof(int), cudaMemcpyHostToDevice);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMemcpy failed!");
        goto Error;
    }

    // Launch a kernel on the GPU with one thread for each element.
    //addKernel<<<1, size>>>(dev_c, dev_a, dev_b);

    // Check for any errors launching the kernel
    cudaStatus = cudaGetLastError();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "addKernel launch failed: %s\n", cudaGetErrorString(cudaStatus));
        goto Error;
    }
    
    // cudaDeviceSynchronize waits for the kernel to finish, and returns
    // any errors encountered during the launch.
    cudaStatus = cudaDeviceSynchronize();
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaDeviceSynchronize returned error code %d after launching addKernel!\n", cudaStatus);
        goto Error;
    }

    // Copy output vector from GPU buffer to host memory.
    cudaStatus = cudaMemcpy(c, dev_c, size * sizeof(int), cudaMemcpyDeviceToHost);
    if (cudaStatus != cudaSuccess) {
        fprintf(stderr, "cudaMemcpy failed!");
        goto Error;
    }

Error:
    cudaFree(dev_c);
    cudaFree(dev_a);
    cudaFree(dev_b);
    
    return cudaStatus;
}
