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
include linalg/bwc/CMakeFiles/bcast-file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include linalg/bwc/CMakeFiles/bcast-file.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/bcast-file.dir/progress.make

# Include the compile flags for this target's objects.
include linalg/bwc/CMakeFiles/bcast-file.dir/flags.make

linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o: linalg/bwc/CMakeFiles/bcast-file.dir/flags.make
linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o: /root/tools/cado-nfs/linalg/bwc/bcast-file.c
linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o: linalg/bwc/CMakeFiles/bcast-file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o -MF CMakeFiles/bcast-file.dir/bcast-file.c.o.d -o CMakeFiles/bcast-file.dir/bcast-file.c.o -c /root/tools/cado-nfs/linalg/bwc/bcast-file.c

linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bcast-file.dir/bcast-file.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/linalg/bwc/bcast-file.c > CMakeFiles/bcast-file.dir/bcast-file.c.i

linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bcast-file.dir/bcast-file.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/linalg/bwc/bcast-file.c -o CMakeFiles/bcast-file.dir/bcast-file.c.s

# Object files for target bcast-file
bcast__file_OBJECTS = \
"CMakeFiles/bcast-file.dir/bcast-file.c.o"

# External object files for target bcast-file
bcast__file_EXTERNAL_OBJECTS =

linalg/bwc/bcast-file: linalg/bwc/CMakeFiles/bcast-file.dir/bcast-file.c.o
linalg/bwc/bcast-file: linalg/bwc/CMakeFiles/bcast-file.dir/build.make
linalg/bwc/bcast-file: linalg/bwc/CMakeFiles/bcast-file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bcast-file"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcast-file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/bcast-file.dir/build: linalg/bwc/bcast-file
.PHONY : linalg/bwc/CMakeFiles/bcast-file.dir/build

linalg/bwc/CMakeFiles/bcast-file.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/bcast-file.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/bcast-file.dir/clean

linalg/bwc/CMakeFiles/bcast-file.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/bcast-file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/bcast-file.dir/depend

