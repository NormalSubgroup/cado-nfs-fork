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

# Utility rule file for list_modified_files.

# Include any custom commands dependencies for this target.
include utils/CMakeFiles/list_modified_files.dir/compiler_depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/list_modified_files.dir/progress.make

utils/CMakeFiles/list_modified_files:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating list of modified files in working tree"
	cd /root/tools/cado-nfs && /root/tools/cado-nfs/scripts/list_modified_files.sh /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/modified_files.c

list_modified_files: utils/CMakeFiles/list_modified_files
list_modified_files: utils/CMakeFiles/list_modified_files.dir/build.make
.PHONY : list_modified_files

# Rule to build all files generated by this target.
utils/CMakeFiles/list_modified_files.dir/build: list_modified_files
.PHONY : utils/CMakeFiles/list_modified_files.dir/build

utils/CMakeFiles/list_modified_files.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && $(CMAKE_COMMAND) -P CMakeFiles/list_modified_files.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/list_modified_files.dir/clean

utils/CMakeFiles/list_modified_files.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/CMakeFiles/list_modified_files.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/list_modified_files.dir/depend

