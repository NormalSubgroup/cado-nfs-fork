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
include tests/sieve/CMakeFiles/test_trialdiv_6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/sieve/CMakeFiles/test_trialdiv_6.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/sieve/CMakeFiles/test_trialdiv_6.dir/progress.make

# Include the compile flags for this target's objects.
include tests/sieve/CMakeFiles/test_trialdiv_6.dir/flags.make

tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o: tests/sieve/CMakeFiles/test_trialdiv_6.dir/flags.make
tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o: /root/tools/cado-nfs/tests/sieve/test_trialdiv.cpp
tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o: tests/sieve/CMakeFiles/test_trialdiv_6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o -MF CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o.d -o CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o -c /root/tools/cado-nfs/tests/sieve/test_trialdiv.cpp

tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/tests/sieve/test_trialdiv.cpp > CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.i

tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/tests/sieve/test_trialdiv.cpp -o CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.s

tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o: tests/sieve/CMakeFiles/test_trialdiv_6.dir/flags.make
tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o: /root/tools/cado-nfs/sieve/trialdiv.cpp
tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o: tests/sieve/CMakeFiles/test_trialdiv_6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o -MF CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o.d -o CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o -c /root/tools/cado-nfs/sieve/trialdiv.cpp

tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/sieve/trialdiv.cpp > CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.i

tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/sieve/trialdiv.cpp -o CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.s

# Object files for target test_trialdiv_6
test_trialdiv_6_OBJECTS = \
"CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o" \
"CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o"

# External object files for target test_trialdiv_6
test_trialdiv_6_EXTERNAL_OBJECTS =

tests/sieve/test_trialdiv_6: tests/sieve/CMakeFiles/test_trialdiv_6.dir/test_trialdiv.cpp.o
tests/sieve/test_trialdiv_6: tests/sieve/CMakeFiles/test_trialdiv_6.dir/__/__/sieve/trialdiv.cpp.o
tests/sieve/test_trialdiv_6: tests/sieve/CMakeFiles/test_trialdiv_6.dir/build.make
tests/sieve/test_trialdiv_6: utils/libutils.a
tests/sieve/test_trialdiv_6: tests/libtests.a
tests/sieve/test_trialdiv_6: tests/sieve/CMakeFiles/test_trialdiv_6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_trialdiv_6"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_trialdiv_6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/sieve/CMakeFiles/test_trialdiv_6.dir/build: tests/sieve/test_trialdiv_6
.PHONY : tests/sieve/CMakeFiles/test_trialdiv_6.dir/build

tests/sieve/CMakeFiles/test_trialdiv_6.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve && $(CMAKE_COMMAND) -P CMakeFiles/test_trialdiv_6.dir/cmake_clean.cmake
.PHONY : tests/sieve/CMakeFiles/test_trialdiv_6.dir/clean

tests/sieve/CMakeFiles/test_trialdiv_6.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/sieve /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sieve/CMakeFiles/test_trialdiv_6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/sieve/CMakeFiles/test_trialdiv_6.dir/depend

