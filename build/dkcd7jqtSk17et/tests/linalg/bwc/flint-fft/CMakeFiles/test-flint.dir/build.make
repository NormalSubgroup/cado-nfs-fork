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
include tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/progress.make

# Include the compile flags for this target's objects.
include tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/flags.make

tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o: tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/flags.make
tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o: /root/tools/cado-nfs/tests/linalg/bwc/flint-fft/test-flint.c
tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o: tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o -MF CMakeFiles/test-flint.dir/test-flint.c.o.d -o CMakeFiles/test-flint.dir/test-flint.c.o -c /root/tools/cado-nfs/tests/linalg/bwc/flint-fft/test-flint.c

tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-flint.dir/test-flint.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/tests/linalg/bwc/flint-fft/test-flint.c > CMakeFiles/test-flint.dir/test-flint.c.i

tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-flint.dir/test-flint.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/tests/linalg/bwc/flint-fft/test-flint.c -o CMakeFiles/test-flint.dir/test-flint.c.s

# Object files for target test-flint
test__flint_OBJECTS = \
"CMakeFiles/test-flint.dir/test-flint.c.o"

# External object files for target test-flint
test__flint_EXTERNAL_OBJECTS =

tests/linalg/bwc/flint-fft/test-flint: tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/test-flint.c.o
tests/linalg/bwc/flint-fft/test-flint: tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/build.make
tests/linalg/bwc/flint-fft/test-flint: linalg/bwc/libflint-fft.a
tests/linalg/bwc/flint-fft/test-flint: utils/libutils.a
tests/linalg/bwc/flint-fft/test-flint: tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-flint"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-flint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/build: tests/linalg/bwc/flint-fft/test-flint
.PHONY : tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/build

tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft && $(CMAKE_COMMAND) -P CMakeFiles/test-flint.dir/cmake_clean.cmake
.PHONY : tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/clean

tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/linalg/bwc/flint-fft /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/linalg/bwc/flint-fft/CMakeFiles/test-flint.dir/depend

