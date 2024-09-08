#pragma once
#include <iostream>

typedef struct satepos {
    int idx; // index id for the corresponding satellite
    int minuteOfDay;
    //td::tm time;
    int satNum;

    int mse; // Minutes since epoch
    double d50UTC; // datestring from 1950 UTC

    /* ecef */
    double L[3]; // lx ly lz
    double V[3]; // vx vy vz

    /* lla */
    //float latA; // Latitude
    //float lonA; // Longitude
    //float altA; // Altitude
    double llh[3]; // Latitude, Longitude, Altitude

    
    bool err; // if sgp4 returns error
}sat_pos_st;

typedef struct Satellite {
    //std::string name;
    //elsetrec satrec;
    char satName[10];
}satellite_st;


typedef struct points {
    double longitude;
    double latitude;

} point_st;

struct LinkedListNode {
    sat_pos_st data;
    int next;
};


class Point {
public:
    double latitude;
    double longitude;

    Point(double lat = 0.0, double lon = 0.0) : latitude(lat), longitude(lon) {}
};
/*
class Rectangle {
public:
    std::vector<Point> vertices;

    Rectangle(const std::vector<Point>& verts) : vertices(verts) {}
};*/