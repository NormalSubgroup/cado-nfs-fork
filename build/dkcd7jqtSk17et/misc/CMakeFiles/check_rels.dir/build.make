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
include misc/CMakeFiles/check_rels.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include misc/CMakeFiles/check_rels.dir/compiler_depend.make

# Include the progress variables for this target.
include misc/CMakeFiles/check_rels.dir/progress.make

# Include the compile flags for this target's objects.
include misc/CMakeFiles/check_rels.dir/flags.make

misc/CMakeFiles/check_rels.dir/check_rels.c.o: misc/CMakeFiles/check_rels.dir/flags.make
misc/CMakeFiles/check_rels.dir/check_rels.c.o: /root/tools/cado-nfs/misc/check_rels.c
misc/CMakeFiles/check_rels.dir/check_rels.c.o: misc/CMakeFiles/check_rels.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object misc/CMakeFiles/check_rels.dir/check_rels.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT misc/CMakeFiles/check_rels.dir/check_rels.c.o -MF CMakeFiles/check_rels.dir/check_rels.c.o.d -o CMakeFiles/check_rels.dir/check_rels.c.o -c /root/tools/cado-nfs/misc/check_rels.c

misc/CMakeFiles/check_rels.dir/check_rels.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_rels.dir/check_rels.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/misc/check_rels.c > CMakeFiles/check_rels.dir/check_rels.c.i

misc/CMakeFiles/check_rels.dir/check_rels.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_rels.dir/check_rels.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/misc/check_rels.c -o CMakeFiles/check_rels.dir/check_rels.c.s

# Object files for target check_rels
check_rels_OBJECTS = \
"CMakeFiles/check_rels.dir/check_rels.c.o"

# External object files for target check_rels
check_rels_EXTERNAL_OBJECTS =

misc/check_rels: misc/CMakeFiles/check_rels.dir/check_rels.c.o
misc/check_rels: misc/CMakeFiles/check_rels.dir/build.make
misc/check_rels: utils/libutils_with_io.a
misc/check_rels: utils/libutils.a
misc/check_rels: misc/CMakeFiles/check_rels.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable check_rels"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_rels.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
misc/CMakeFiles/check_rels.dir/build: misc/check_rels
.PHONY : misc/CMakeFiles/check_rels.dir/build

misc/CMakeFiles/check_rels.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc && $(CMAKE_COMMAND) -P CMakeFiles/check_rels.dir/cmake_clean.cmake
.PHONY : misc/CMakeFiles/check_rels.dir/clean

misc/CMakeFiles/check_rels.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/misc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc /root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/CMakeFiles/check_rels.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : misc/CMakeFiles/check_rels.dir/depend

