# Include common compiling options
include ../F_CompilingOptions

# Define macros
APPNAME = Sgp4Prop_Simple

# Object files
OBJS= \
	$(OBJDIR)/DllMainDll.o \
	$(OBJDIR)/TimeFuncDll.o \
	$(OBJDIR)/Sgp4PropDll.o \
	$(OBJDIR)/AstroFuncDll.o \
	$(OBJDIR)/TleDll.o \
	$(OBJDIR)/EnvConstDll.o \
	$(OBJDIR)/Sgp4PropMod.o \
	$(OBJDIR)/Sgp4Prop_Simple.o

# Dependent Astro libraries
ASTRO_LIBS = -lastrofunc -ltimefunc -lenvconst -ldllmain -lsgp4prop -ltle 

# Link command
$(BINDIR)/$(APPNAME): $(OBJS)
	$(COMPILER) $(LINK_FLAGS) -o $(BINDIR)/$(APPNAME)$(SUFFIX) $(OBJS) $(LIBS) $(ASTRO_LIBS)

# Compile command
$(OBJDIR)/%.o: %.f90
	$(COMPILER) $(COMPILER_FLAGS) $< -o $@

clean:
	rm -rf *.mod
	rm -rf $(OBJDIR)
	rm -rf $(BINDIR)
	rm -rf $(MODDIR)
