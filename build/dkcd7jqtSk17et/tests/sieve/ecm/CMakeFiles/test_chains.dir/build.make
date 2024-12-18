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
include tests/sieve/ecm/CMakeFiles/test_chains.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/sieve/ecm/CMakeFiles/test_chains.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/sieve/ecm/CMakeFiles/test_chains.dir/progress.make

# Include the compile flags for this target's objects.
include tests/sieve/ecm/CMakeFiles/test_chains.dir/flags.make

tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o: tests/sieve/ecm/CMakeFiles/test_chains.dir/flags.make
tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o: /root/tools/cado-nfs/tests/sieve/ecm/test_chains.c
tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o: tests/sieve/ecm/CMakeFiles/test_chains.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o -MF CMakeFiles/test_chains.dir/test_chains.c.o.d -o CMakeFiles/test_chains.dir/test_chains.c.o -c /root/tools/cado-nfs/tests/sieve/ecm/test_chains.c

tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_chains.dir/test_chains.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/tests/sieve/ecm/test_chains.c > CMakeFiles/test_chains.dir/test_chains.c.i

tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_chains.dir/test_chains.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/tests/sieve/ecm/test_chains.c -o CMakeFiles/test_chains.dir/test_chains.c.s

# Object files for target test_chains
test_chains_OBJECTS = \
"CMakeFiles/test_chains.dir/test_chains.c.o"

# External object files for target test_chains
test_chains_EXTERNAL_OBJECTS =

tests/sieve/ecm/test_chains: tests/sieve/ecm/CMakeFiles/test_chains.dir/test_chains.c.o
tests/sieve/ecm/test_chains: tests/sieve/ecm/CMakeFiles/test_chains.dir/build.make
tests/sieve/ecm/test_chains: tests/libtests.a
tests/sieve/ecm/test_chains: sieve/ecm/libfacul.a
tests/sieve/ecm/test_chains: utils/libutils.a
tests/sieve/ecm/test_chains: tests/sieve/ecm/CMakeFiles/test_chains.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_chains"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_chains.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/sieve/ecm/CMakeFiles/test_chains.dir/build: tests/sieve/ecm/test_chains
.PHONY : tests/sieve/ecm/CMakeFiles/test_chains.dir/build

tests/sieve/ecm/CMakeFiles/test_chains.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm && $(CMAKE_COMMAND) -P CMakeFiles/test_chains.dir/cmake_clean.cmake
.PHONY : tests/sieve/ecm/CMakeFiles/test_chains.dir/clean

tests/sieve/ecm/CMakeFiles/test_chains.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/sieve/ecm /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/ecm/CMakeFiles/test_chains.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/sieve/ecm/CMakeFiles/test_chains.dir/depend

