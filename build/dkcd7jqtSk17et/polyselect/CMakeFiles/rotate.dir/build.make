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
include polyselect/CMakeFiles/rotate.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include polyselect/CMakeFiles/rotate.dir/compiler_depend.make

# Include the progress variables for this target.
include polyselect/CMakeFiles/rotate.dir/progress.make

# Include the compile flags for this target's objects.
include polyselect/CMakeFiles/rotate.dir/flags.make

polyselect/CMakeFiles/rotate.dir/rotate.c.o: polyselect/CMakeFiles/rotate.dir/flags.make
polyselect/CMakeFiles/rotate.dir/rotate.c.o: /root/tools/cado-nfs/polyselect/rotate.c
polyselect/CMakeFiles/rotate.dir/rotate.c.o: polyselect/CMakeFiles/rotate.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object polyselect/CMakeFiles/rotate.dir/rotate.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/rotate.dir/rotate.c.o -MF CMakeFiles/rotate.dir/rotate.c.o.d -o CMakeFiles/rotate.dir/rotate.c.o -c /root/tools/cado-nfs/polyselect/rotate.c

polyselect/CMakeFiles/rotate.dir/rotate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rotate.dir/rotate.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/rotate.c > CMakeFiles/rotate.dir/rotate.c.i

polyselect/CMakeFiles/rotate.dir/rotate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rotate.dir/rotate.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/rotate.c -o CMakeFiles/rotate.dir/rotate.c.s

# Object files for target rotate
rotate_OBJECTS = \
"CMakeFiles/rotate.dir/rotate.c.o"

# External object files for target rotate
rotate_EXTERNAL_OBJECTS =

polyselect/rotate: polyselect/CMakeFiles/rotate.dir/rotate.c.o
polyselect/rotate: polyselect/CMakeFiles/rotate.dir/build.make
polyselect/rotate: polyselect/libpolyselect_common.a
polyselect/rotate: utils/libutils.a
polyselect/rotate: polyselect/CMakeFiles/rotate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rotate"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rotate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
polyselect/CMakeFiles/rotate.dir/build: polyselect/rotate
.PHONY : polyselect/CMakeFiles/rotate.dir/build

polyselect/CMakeFiles/rotate.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -P CMakeFiles/rotate.dir/cmake_clean.cmake
.PHONY : polyselect/CMakeFiles/rotate.dir/clean

polyselect/CMakeFiles/rotate.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect/CMakeFiles/rotate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : polyselect/CMakeFiles/rotate.dir/depend

