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

# Utility rule file for test_renumber_file_mnfs5_dependencies.

# Include any custom commands dependencies for this target.
include tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/progress.make

test_renumber_file_mnfs5_dependencies: tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/build.make
.PHONY : test_renumber_file_mnfs5_dependencies

# Rule to build all files generated by this target.
tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/build: test_renumber_file_mnfs5_dependencies
.PHONY : tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/build

tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc && $(CMAKE_COMMAND) -P CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/cmake_clean.cmake
.PHONY : tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/clean

tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/misc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/misc/CMakeFiles/test_renumber_file_mnfs5_dependencies.dir/depend

