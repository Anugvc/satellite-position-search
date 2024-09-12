# Include common compiling options
include ../F_CompilingOptions

# Define macros
APPNAME = TestInterfaces

# Object files
OBJS= \
	$(OBJDIR)/DllMainDll.o \
	$(OBJDIR)/TestInterfaces.o

# Dependent Astro libraries
ASTRO_LIBS = -ldllmain

# Link command
$(BINDIR)/$(APPNAME): $(OBJS)
	$(COMPILER) $(LINK_FLAGS) -o $(BINDIR)/$(APPNAME)$(SUFFIX) $(OBJS) $(LIBS) $(ASTRO_LIBS)

# Compile command
$(OBJDIR)/%.o: %.f90
	$(COMPILER) $(COMPILER_FLAGS) $< -o $@

clean:
	rm -rf $(OBJDIR)
	rm -rf $(BINDIR)
	rm -rf $(MODDIR)
