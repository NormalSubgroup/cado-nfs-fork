# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/tools/cado-nfs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/tools/cado-nfs/build/dkcd7jqtSk17et

# Include any dependencies generated for this target.
include sieve/CMakeFiles/las_core_c.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sieve/CMakeFiles/las_core_c.dir/compiler_depend.make

# Include the progress variables for this target.
include sieve/CMakeFiles/las_core_c.dir/progress.make

# Include the compile flags for this target's objects.
include sieve/CMakeFiles/las_core_c.dir/flags.make

sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o: sieve/CMakeFiles/las_core_c.dir/flags.make
sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o: /root/tools/cado-nfs/sieve/las-arith.cpp
sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o: sieve/CMakeFiles/las_core_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o -MF CMakeFiles/las_core_c.dir/las-arith.cpp.o.d -o CMakeFiles/las_core_c.dir/las-arith.cpp.o -c /root/tools/cado-nfs/sieve/las-arith.cpp

sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/las_core_c.dir/las-arith.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/sieve/las-arith.cpp > CMakeFiles/las_core_c.dir/las-arith.cpp.i

sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/las_core_c.dir/las-arith.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/sieve/las-arith.cpp -o CMakeFiles/las_core_c.dir/las-arith.cpp.s

sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o: sieve/CMakeFiles/las_core_c.dir/flags.make
sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o: /root/tools/cado-nfs/sieve/las-descent-trees.cpp
sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o: sieve/CMakeFiles/las_core_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o -MF CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o.d -o CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o -c /root/tools/cado-nfs/sieve/las-descent-trees.cpp

sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/las_core_c.dir/las-descent-trees.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/sieve/las-descent-trees.cpp > CMakeFiles/las_core_c.dir/las-descent-trees.cpp.i

sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/las_core_c.dir/las-descent-trees.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/sieve/las-descent-trees.cpp -o CMakeFiles/las_core_c.dir/las-descent-trees.cpp.s

sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o: sieve/CMakeFiles/las_core_c.dir/flags.make
sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o: /root/tools/cado-nfs/sieve/las-plattice.cpp
sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o: sieve/CMakeFiles/las_core_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o -MF CMakeFiles/las_core_c.dir/las-plattice.cpp.o.d -o CMakeFiles/las_core_c.dir/las-plattice.cpp.o -c /root/tools/cado-nfs/sieve/las-plattice.cpp

sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/las_core_c.dir/las-plattice.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/sieve/las-plattice.cpp > CMakeFiles/las_core_c.dir/las-plattice.cpp.i

sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/las_core_c.dir/las-plattice.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/sieve/las-plattice.cpp -o CMakeFiles/las_core_c.dir/las-plattice.cpp.s

las_core_c: sieve/CMakeFiles/las_core_c.dir/las-arith.cpp.o
las_core_c: sieve/CMakeFiles/las_core_c.dir/las-descent-trees.cpp.o
las_core_c: sieve/CMakeFiles/las_core_c.dir/las-plattice.cpp.o
las_core_c: sieve/CMakeFiles/las_core_c.dir/build.make
.PHONY : las_core_c

# Rule to build all files generated by this target.
sieve/CMakeFiles/las_core_c.dir/build: las_core_c
.PHONY : sieve/CMakeFiles/las_core_c.dir/build

sieve/CMakeFiles/las_core_c.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve && $(CMAKE_COMMAND) -P CMakeFiles/las_core_c.dir/cmake_clean.cmake
.PHONY : sieve/CMakeFiles/las_core_c.dir/clean

sieve/CMakeFiles/las_core_c.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/sieve /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve /root/tools/cado-nfs/build/dkcd7jqtSk17et/sieve/CMakeFiles/las_core_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sieve/CMakeFiles/las_core_c.dir/depend

