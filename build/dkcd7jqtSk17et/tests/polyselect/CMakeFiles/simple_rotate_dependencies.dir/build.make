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

# Utility rule file for simple_rotate_dependencies.

# Include any custom commands dependencies for this target.
include tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/progress.make

simple_rotate_dependencies: tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/build.make
.PHONY : simple_rotate_dependencies

# Rule to build all files generated by this target.
tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/build: simple_rotate_dependencies
.PHONY : tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/build

tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/polyselect && $(CMAKE_COMMAND) -P CMakeFiles/simple_rotate_dependencies.dir/cmake_clean.cmake
.PHONY : tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/clean

tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/polyselect/CMakeFiles/simple_rotate_dependencies.dir/depend

