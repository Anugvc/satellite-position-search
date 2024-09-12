      program TestInterfaces
      use DllMainDll
      !Test Interface Variables
      character      :: cIn, cOut
      integer        :: intIn, intOut
      integer(8)     :: longIn, longOut
      real(8)        :: realIn, realOut
      character(512) :: strIn, strOut
      integer        :: int1DIn(3), int1DOut(3)
      integer(8)     :: long1DIn(3), long1DOut(3)
      real(8)        :: real1DIn(3), real1DOut(3)
      integer        :: int2DIn(3,2), int2DOut(3,2)
      integer(8)     :: long2DIn(3,2), long2DOut(3,2)
      real(8)        :: real2DIn(3,2), real2DOut(3,2)
      !TestInterface2 Variables
      character      :: cInOut
      integer        :: intInOut
      integer(8)     :: longInOut
      real(8)        :: realInOut
      character(512) :: strInOut
      integer        :: int1DInOut(3)
      integer(8)     :: long1DInOut(3)
      real(8)        :: real1DInOut(3)
      integer        :: int2DInOut(3,2)
      integer(8)     :: long2DInOut(3,2)
      real(8)        :: real2DInOut(3,2)
      !TestInterface3 Variables
      integer :: nRow ! Number of Rows
      integer :: nCol ! Number of Columns
      integer, allocatable :: Unk1DIn(:)
      integer, allocatable :: Unk1DOut(:)
      integer, allocatable :: Unk2DIn(:,:)
      integer, allocatable :: Unk2DOut(:,:)
    
      ! TestInterface
      ! Test basic types
      write(*,*) 'Testing TestInterface'
      cIn = 'Z'
      intIn = 123
      longIn = 1234567890123456789_8
      realIn = 123.45D0
      strIn = "I am Batman"
      int1DIn = (/1, 2, 3/)
      long1Din = (/1234567890123456789_8, 2_8, 3_8/)
      real1Din = (/1.1d0 ,2.2d0, 3.3d0/)
      int2DIn(:,1) = (/1, 2, 3/)
      int2DIn(:,2) = (/4, 5, 6/)
      long2Din(:,1) = (/1234567890123456789_8, 2_8, 3_8/)
      long2Din(:,2) = (/4_8, 5_8, 6_8/)
      real2Din(:,1) = (/1.1d0, 2.2d0, 3.3d0/)
      real2Din(:,2) = (/4.4d0, 5.5d0, 6.6d0/)
      
      call TestInterface(cIn, cOut, intIn, intOut, longIn, longOut, realIn, realOut, strIn, strOut, int1DIn, int1DOut, long1DIn, long1DOut, real1DIn, real1DOut, int2DIn, int2DOut, long2DIn, long2DOut, real2DIn, real2DOut)
      
      write(*,*) 'cOut = ',cOut
      write(*,*) 'intOut = ',intOut
      write(*,*) 'longOut = ',longOut
      write(*,*) 'realOut = ',realOut
      write(*,*) 'strOut = '//trim(strOut)
      write(*,*) 'int1DOut = ',int1DOut
      write(*,*) 'long1DOut = ',long1DOut
      write(*,'(1x,A,3(f3.1,1x))') 'real1DOut = ',real1DOut
      write(*,*) 'int2DOut(1,:) = ',int2DOut(1,:)
      write(*,*) 'int2DOut(2,:) = ',int2DOut(2,:)
      write(*,*) 'int2DOut(3,:) = ',int2DOut(3,:)
      write(*,*) 'long2DOut(1,:) = ',long2DOut(1,:)
      write(*,*) 'long2DOut(2,:) = ',long2DOut(2,:)
      write(*,*) 'long2DOut(3,:) = ',long2DOut(3,:)
      write(*,*) 'real2DOut(1,:) = ',real2DOut(1,:)
      write(*,*) 'real2DOut(2,:) = ',real2DOut(2,:)
      write(*,*) 'real2DOut(3,:) = ',real2DOut(3,:)
      write(*,*)
      
      ! TestInterface2
      ! Test the concept of inout variables
      write(*,*) 'Testing TestInterface2'
      cInOut = 'A'
      intInOut = intIn;
      longInOut = longIn;
      realInOut = realIn;
      strInOut = strIn;
      int1DInOut = int1DIn;
      long1DInOut = long1DIn;
      real1DInOut = real1DIn;
      int2DInOut = int2DIn;
      long2DInOut = long2DIn;
      real2DInOut = real2DIn;
      
      call TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut)
      
      write(*,*) 'cInOut = ',cInOut
      write(*,*) 'intInOut = ',intInOut
      write(*,*) 'longInOut = ',longInOut
      write(*,*) 'realInOut = ',realInOut
      write(*,*) 'strInOut = '//trim(strInOut)
      write(*,*) 'int1DInOut = ',int1DInOut
      write(*,'(1x,A,3(1x,I20))') 'long1DInOut = ',long1DInOut
      write(*,'(1x,A,3(f4.1,1x))') 'real1DInOut = ',real1DInOut
      write(*,*) 'int2DInOut(1,:) = ',int2DInOut(1,:)
      write(*,*) 'int2DInOut(2,:) = ',int2DInOut(2,:)
      write(*,*) 'int2DInOut(3,:) = ',int2DInOut(3,:)
      write(*,*) 'long2DInOut(1,:) = ',long2DInOut(1,:)
      write(*,*) 'long2DInOut(2,:) = ',long2DInOut(2,:)
      write(*,*) 'long2DInOut(3,:) = ',long2DInOut(3,:)
      write(*,*) 'real2DInOut(1,:) = ',real2DInOut(1,:)
      write(*,*) 'real2DInOut(2,:) = ',real2DInOut(2,:)
      write(*,*) 'real2DInOut(3,:) = ',real2DInOut(3,:)
      write(*,*)
      
      ! TestInterface3
      ! Test the concept of arrays of unknown size at compile time
      write(*,*) 'Testing TestInterface3'
      nRow = 3
      nCol = 2
      allocate(Unk1DIn(nRow))
      allocate(Unk1DOut(nRow))
      allocate(Unk2DIn(nRow,nCol))
      allocate(Unk2DOut(nRow,nCol))
      Unk1DIn = int1DIn
      Unk2DIn = int2Din
      
      call TestInterface3(Unk1DIn, Unk1DOut, Unk2DIn, Unk2DOut)
      
      write(*,*) 'Unk1DOut = ',Unk1DOut
      write(*,*) 'Unk2DOut(1,:) = ',Unk2DOut(1,:)
      write(*,*) 'Unk2DOut(2,:) = ',Unk2DOut(2,:)
      write(*,*) 'Unk2DOut(3,:) = ',Unk2DOut(3,:)
      
      stop
      end program TestInterfaces