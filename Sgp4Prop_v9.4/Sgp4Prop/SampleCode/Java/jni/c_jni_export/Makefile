# Purpose: This file contains C compiling options. This file will be included
#          in the DriverExamples folder.
# Note: Need to have JAVA_HOME set on Linux

# Create the obj and bin directories if they don't exist
ifeq ($(OS), WindowsNT)
    MKDIR = mkdir
else
    MKDIR = mkdir -p
endif

$(shell ${MKDIR} Jni$(MODULE)/obj)

# Use the correct compiler flag for different machine architecture 
ARCH=-m64

ifeq ($(OS), WindowsNT)
    LIBDIR=./lib/Windows
else
    LIBDIR=./lib/Linux
    CFLAGS = -c -I$(JAVA_HOME)/include -I$(JAVA_HOME)/include/linux
    EXTENSION = so
    
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S), Darwin)
        export JAVA_HOME=`/usr/libexec/java_home`
        LIBDIR=./lib/MacOS
        CFLAGS = -c -I$(JAVA_HOME)/include -I$(JAVA_HOME)/include/darwin
        EXTENSION = dylib
    endif
endif

$(shell ${MKDIR} ${LIBDIR})

# Define macros
APPNAME     = libjni$(shell echo $(MODULE) | tr A-Z a-z)
SOURCE      = ./Jni$(MODULE)/src
OBJDIR      = ./Jni$(MODULE)/obj
SERVICES    = ./services
WRAPPERS    = ./wrappers

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
    $(OBJDIR)/$(MODULE)Dll.o \
    $(OBJDIR)/afspc_astrostds_wrappers_$(MODULE).o

### Compile source files into object file (.o's) ###
### using implicit rules (Inference Rules) ###
$(OBJDIR)/%.o: %.c
	$(CC) -fpic $(ARCH) $(CFLAGS) -c $< -o $@

### Build Application ###
$(APPNAME).so: $(OBJS)
	$(CC) -shared $(ARCH) -o $(LIBDIR)/$(APPNAME).$(EXTENSION) $(OBJS) $(CLIB)

clean:
	rm -rf $(OBJDIR)

all : clean $(LIBDIR)/$(APPNAME).so

