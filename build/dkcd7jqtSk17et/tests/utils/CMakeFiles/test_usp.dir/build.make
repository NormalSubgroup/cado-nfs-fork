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
include tests/utils/CMakeFiles/test_usp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/utils/CMakeFiles/test_usp.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/utils/CMakeFiles/test_usp.dir/progress.make

# Include the compile flags for this target's objects.
include tests/utils/CMakeFiles/test_usp.dir/flags.make

tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o: tests/utils/CMakeFiles/test_usp.dir/flags.make
tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o: /root/tools/cado-nfs/tests/utils/test_usp.c
tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o: tests/utils/CMakeFiles/test_usp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o -MF CMakeFiles/test_usp.dir/test_usp.c.o.d -o CMakeFiles/test_usp.dir/test_usp.c.o -c /root/tools/cado-nfs/tests/utils/test_usp.c

tests/utils/CMakeFiles/test_usp.dir/test_usp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_usp.dir/test_usp.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/tests/utils/test_usp.c > CMakeFiles/test_usp.dir/test_usp.c.i

tests/utils/CMakeFiles/test_usp.dir/test_usp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_usp.dir/test_usp.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/tests/utils/test_usp.c -o CMakeFiles/test_usp.dir/test_usp.c.s

# Object files for target test_usp
test_usp_OBJECTS = \
"CMakeFiles/test_usp.dir/test_usp.c.o"

# External object files for target test_usp
test_usp_EXTERNAL_OBJECTS =

tests/utils/test_usp: tests/utils/CMakeFiles/test_usp.dir/test_usp.c.o
tests/utils/test_usp: tests/utils/CMakeFiles/test_usp.dir/build.make
tests/utils/test_usp: utils/libutils.a
tests/utils/test_usp: tests/libtests.a
tests/utils/test_usp: tests/utils/CMakeFiles/test_usp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_usp"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_usp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/utils/CMakeFiles/test_usp.dir/build: tests/utils/test_usp
.PHONY : tests/utils/CMakeFiles/test_usp.dir/build

tests/utils/CMakeFiles/test_usp.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && $(CMAKE_COMMAND) -P CMakeFiles/test_usp.dir/cmake_clean.cmake
.PHONY : tests/utils/CMakeFiles/test_usp.dir/clean

tests/utils/CMakeFiles/test_usp.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils/CMakeFiles/test_usp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/utils/CMakeFiles/test_usp.dir/depend

