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
include linalg/bwc/CMakeFiles/bench_polmatmul.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include linalg/bwc/CMakeFiles/bench_polmatmul.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/bench_polmatmul.dir/progress.make

# Include the compile flags for this target's objects.
include linalg/bwc/CMakeFiles/bench_polmatmul.dir/flags.make

linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o: linalg/bwc/CMakeFiles/bench_polmatmul.dir/flags.make
linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o: /root/tools/cado-nfs/linalg/bwc/bench_polmatmul.cpp
linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o: linalg/bwc/CMakeFiles/bench_polmatmul.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DCANTOR_BASE_FIELD_SIZE=128 -MD -MT linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o -MF CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o.d -o CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o -c /root/tools/cado-nfs/linalg/bwc/bench_polmatmul.cpp

linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DCANTOR_BASE_FIELD_SIZE=128 -E /root/tools/cado-nfs/linalg/bwc/bench_polmatmul.cpp > CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.i

linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DCANTOR_BASE_FIELD_SIZE=128 -S /root/tools/cado-nfs/linalg/bwc/bench_polmatmul.cpp -o CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.s

# Object files for target bench_polmatmul
bench_polmatmul_OBJECTS = \
"CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o"

# External object files for target bench_polmatmul
bench_polmatmul_EXTERNAL_OBJECTS =

linalg/bwc/bench_polmatmul: linalg/bwc/CMakeFiles/bench_polmatmul.dir/bench_polmatmul.cpp.o
linalg/bwc/bench_polmatmul: linalg/bwc/CMakeFiles/bench_polmatmul.dir/build.make
linalg/bwc/bench_polmatmul: utils/libutils.a
linalg/bwc/bench_polmatmul: linalg/bwc/CMakeFiles/bench_polmatmul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bench_polmatmul"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_polmatmul.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/bench_polmatmul.dir/build: linalg/bwc/bench_polmatmul
.PHONY : linalg/bwc/CMakeFiles/bench_polmatmul.dir/build

linalg/bwc/CMakeFiles/bench_polmatmul.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/bench_polmatmul.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/bench_polmatmul.dir/clean

linalg/bwc/CMakeFiles/bench_polmatmul.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/bench_polmatmul.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/bench_polmatmul.dir/depend
