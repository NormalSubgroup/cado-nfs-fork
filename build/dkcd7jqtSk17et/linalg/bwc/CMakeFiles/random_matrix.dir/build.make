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
include linalg/bwc/CMakeFiles/random_matrix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include linalg/bwc/CMakeFiles/random_matrix.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/random_matrix.dir/progress.make

# Include the compile flags for this target's objects.
include linalg/bwc/CMakeFiles/random_matrix.dir/flags.make

linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o: linalg/bwc/CMakeFiles/random_matrix.dir/flags.make
linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o: /root/tools/cado-nfs/linalg/bwc/random_matrix.cpp
linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o: linalg/bwc/CMakeFiles/random_matrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o -MF CMakeFiles/random_matrix.dir/random_matrix.cpp.o.d -o CMakeFiles/random_matrix.dir/random_matrix.cpp.o -c /root/tools/cado-nfs/linalg/bwc/random_matrix.cpp

linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/random_matrix.dir/random_matrix.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/linalg/bwc/random_matrix.cpp > CMakeFiles/random_matrix.dir/random_matrix.cpp.i

linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/random_matrix.dir/random_matrix.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/linalg/bwc/random_matrix.cpp -o CMakeFiles/random_matrix.dir/random_matrix.cpp.s

# Object files for target random_matrix
random_matrix_OBJECTS = \
"CMakeFiles/random_matrix.dir/random_matrix.cpp.o"

# External object files for target random_matrix
random_matrix_EXTERNAL_OBJECTS =

linalg/bwc/random_matrix: linalg/bwc/CMakeFiles/random_matrix.dir/random_matrix.cpp.o
linalg/bwc/random_matrix: linalg/bwc/CMakeFiles/random_matrix.dir/build.make
linalg/bwc/random_matrix: utils/libutils.a
linalg/bwc/random_matrix: linalg/bwc/CMakeFiles/random_matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable random_matrix"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/random_matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/random_matrix.dir/build: linalg/bwc/random_matrix
.PHONY : linalg/bwc/CMakeFiles/random_matrix.dir/build

linalg/bwc/CMakeFiles/random_matrix.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/random_matrix.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/random_matrix.dir/clean

linalg/bwc/CMakeFiles/random_matrix.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/random_matrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/random_matrix.dir/depend
