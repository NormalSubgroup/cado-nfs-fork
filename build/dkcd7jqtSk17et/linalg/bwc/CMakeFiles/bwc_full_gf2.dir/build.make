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

# Utility rule file for bwc_full_gf2.

# Include any custom commands dependencies for this target.
include linalg/bwc/CMakeFiles/bwc_full_gf2.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/bwc_full_gf2.dir/progress.make

bwc_full_gf2: linalg/bwc/CMakeFiles/bwc_full_gf2.dir/build.make
.PHONY : bwc_full_gf2

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/bwc_full_gf2.dir/build: bwc_full_gf2
.PHONY : linalg/bwc/CMakeFiles/bwc_full_gf2.dir/build

linalg/bwc/CMakeFiles/bwc_full_gf2.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/bwc_full_gf2.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/bwc_full_gf2.dir/clean

linalg/bwc/CMakeFiles/bwc_full_gf2.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/bwc_full_gf2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/bwc_full_gf2.dir/depend

