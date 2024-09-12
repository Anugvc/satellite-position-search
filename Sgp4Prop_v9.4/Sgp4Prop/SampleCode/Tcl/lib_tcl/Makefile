# Purpose: This file contains C compiling options. This file will be included
#          in the DriverExamples folder.

# Create the obj and bin directories if they don't exist
ifeq ($(OS), WindowsNT)
    MKDIR = mkdir
else
    MKDIR = mkdir -p
endif

$(shell ${MKDIR} Tcl$(MODULE)/obj)

# Use the correct compiler flag for different machine architecture 
ARCH=-m64

ifeq ($(OS), WindowsNT)
    LIBDIR=./lib/Windows
    CFLAGS = -I/opt/tcl/include -I./Tcl$(MODULE)/src -I./services -I./wrappers
    EXTENSION = dll
else
    LIBDIR=./lib/Linux
    CFLAGS = -I/opt/tcl/include -I./Tcl$(MODULE)/src -I./services -I./wrappers
    EXTENSION = so

    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S), Darwin)
        LIBDIR=./lib/MacOS
        CFLAGS = -I/opt/tcl/include -I./Tcl$(MODULE)/src -I./services -I./wrappers
        EXTENSION = dylib
    endif
endif


$(shell ${MKDIR} ${LIBDIR})

# Define macros
APPNAME     = lib$(shell echo $(MODULE)_tcl | tr A-Z a-z)
SOURCE      = ./Tcl$(MODULE)/src
OBJDIR      = ./Tcl$(MODULE)/obj
SERVICES    = ./services
WRAPPERS    = ./wrappers

$(shell ${MKDIR} ${OBJDIR})

# DHN 31Oct2019 - add new VPATH variable which is to specify the search path (separated by colons or blanks).
# Order in which directories are listed is the order followed by make in its search
VPATH = $(SOURCE):$(SERVICES):$(WRAPPERS)

# compiling options
# -lm : linking with math library libm.so
# -lc : linking with standard C library libc.so
# -ldl: linking with library contains dlopen, dlclose, dlsym...
# -c  : compile only
CC     = gcc

CLIB   = -ldl -lc -lm

### C Objects ###
OBJS= \
	$(OBJDIR)/DllUtils.o \
	$(OBJDIR)/Tcl_conv.o \
	$(OBJDIR)/$(MODULE)Dll.o \
	$(OBJDIR)/Tcl_$(MODULE).o


### Compile source files into object file (.o's) ###
### using implicit rules (Inference Rules) ###
$(OBJDIR)/%.o: %.c
	$(CC) -fPIC $(ARCH) $(CFLAGS) -c $< -o $@

### Build Application ###
$(APPNAME).so: $(OBJS)
	$(CC) -shared $(ARCH) -o $(LIBDIR)/$(APPNAME).$(EXTENSION) $(OBJS) $(CLIB)


clean:
	rm -rf $(OBJDIR)

all : clean $(LIBDIR)/$(APPNAME).$(EXTENSION)

