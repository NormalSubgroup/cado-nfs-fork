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
include polyselect/CMakeFiles/dlpolyselect.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include polyselect/CMakeFiles/dlpolyselect.dir/compiler_depend.make

# Include the progress variables for this target.
include polyselect/CMakeFiles/dlpolyselect.dir/progress.make

# Include the compile flags for this target's objects.
include polyselect/CMakeFiles/dlpolyselect.dir/flags.make

polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o: polyselect/CMakeFiles/dlpolyselect.dir/flags.make
polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o: /root/tools/cado-nfs/polyselect/dlpolyselect.c
polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o: polyselect/CMakeFiles/dlpolyselect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o -MF CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o.d -o CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o -c /root/tools/cado-nfs/polyselect/dlpolyselect.c

polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dlpolyselect.dir/dlpolyselect.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/dlpolyselect.c > CMakeFiles/dlpolyselect.dir/dlpolyselect.c.i

polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dlpolyselect.dir/dlpolyselect.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/dlpolyselect.c -o CMakeFiles/dlpolyselect.dir/dlpolyselect.c.s

# Object files for target dlpolyselect
dlpolyselect_OBJECTS = \
"CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o"

# External object files for target dlpolyselect
dlpolyselect_EXTERNAL_OBJECTS =

polyselect/dlpolyselect: polyselect/CMakeFiles/dlpolyselect.dir/dlpolyselect.c.o
polyselect/dlpolyselect: polyselect/CMakeFiles/dlpolyselect.dir/build.make
polyselect/dlpolyselect: polyselect/libpolyselect_common.a
polyselect/dlpolyselect: utils/libutils.a
polyselect/dlpolyselect: polyselect/CMakeFiles/dlpolyselect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dlpolyselect"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dlpolyselect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
polyselect/CMakeFiles/dlpolyselect.dir/build: polyselect/dlpolyselect
.PHONY : polyselect/CMakeFiles/dlpolyselect.dir/build

polyselect/CMakeFiles/dlpolyselect.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -P CMakeFiles/dlpolyselect.dir/cmake_clean.cmake
.PHONY : polyselect/CMakeFiles/dlpolyselect.dir/clean

polyselect/CMakeFiles/dlpolyselect.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect/CMakeFiles/dlpolyselect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : polyselect/CMakeFiles/dlpolyselect.dir/depend
