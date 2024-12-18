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
include linalg/bwc/CMakeFiles/matmul_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include linalg/bwc/CMakeFiles/matmul_common.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/matmul_common.dir/progress.make

# Include the compile flags for this target's objects.
include linalg/bwc/CMakeFiles/matmul_common.dir/flags.make

linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o: linalg/bwc/CMakeFiles/matmul_common.dir/flags.make
linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o: /root/tools/cado-nfs/linalg/bwc/matmul-common.cpp
linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o: linalg/bwc/CMakeFiles/matmul_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o -MF CMakeFiles/matmul_common.dir/matmul-common.cpp.o.d -o CMakeFiles/matmul_common.dir/matmul-common.cpp.o -c /root/tools/cado-nfs/linalg/bwc/matmul-common.cpp

linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matmul_common.dir/matmul-common.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/linalg/bwc/matmul-common.cpp > CMakeFiles/matmul_common.dir/matmul-common.cpp.i

linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matmul_common.dir/matmul-common.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/linalg/bwc/matmul-common.cpp -o CMakeFiles/matmul_common.dir/matmul-common.cpp.s

# Object files for target matmul_common
matmul_common_OBJECTS = \
"CMakeFiles/matmul_common.dir/matmul-common.cpp.o"

# External object files for target matmul_common
matmul_common_EXTERNAL_OBJECTS =

linalg/bwc/libmatmul_common.a: linalg/bwc/CMakeFiles/matmul_common.dir/matmul-common.cpp.o
linalg/bwc/libmatmul_common.a: linalg/bwc/CMakeFiles/matmul_common.dir/build.make
linalg/bwc/libmatmul_common.a: linalg/bwc/CMakeFiles/matmul_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmatmul_common.a"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/matmul_common.dir/cmake_clean_target.cmake
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matmul_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/matmul_common.dir/build: linalg/bwc/libmatmul_common.a
.PHONY : linalg/bwc/CMakeFiles/matmul_common.dir/build

linalg/bwc/CMakeFiles/matmul_common.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/matmul_common.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/matmul_common.dir/clean

linalg/bwc/CMakeFiles/matmul_common.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/matmul_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/matmul_common.dir/depend
