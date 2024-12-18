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
include tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/progress.make

# Include the compile flags for this target's objects.
include tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/flags.make

tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o: tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/flags.make
tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o: /root/tools/cado-nfs/linalg/bwc/check_mpi_problems.c
tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o: tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o -MF CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o.d -o CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o -c /root/tools/cado-nfs/linalg/bwc/check_mpi_problems.c

tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/linalg/bwc/check_mpi_problems.c > CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.i

tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/linalg/bwc/check_mpi_problems.c -o CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.s

# Object files for target check_mpi_problems
check_mpi_problems_OBJECTS = \
"CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o"

# External object files for target check_mpi_problems
check_mpi_problems_EXTERNAL_OBJECTS =

tests/linalg/bwc/check_mpi_problems: tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/__/__/__/linalg/bwc/check_mpi_problems.c.o
tests/linalg/bwc/check_mpi_problems: tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/build.make
tests/linalg/bwc/check_mpi_problems: tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check_mpi_problems"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_mpi_problems.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/build: tests/linalg/bwc/check_mpi_problems
.PHONY : tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/build

tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/check_mpi_problems.dir/cmake_clean.cmake
.PHONY : tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/clean

tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/linalg/bwc/CMakeFiles/check_mpi_problems.dir/depend
