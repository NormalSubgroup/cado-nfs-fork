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
include tests/utils/CMakeFiles/test_relation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/utils/CMakeFiles/test_relation.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/utils/CMakeFiles/test_relation.dir/progress.make

# Include the compile flags for this target's objects.
include tests/utils/CMakeFiles/test_relation.dir/flags.make

tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o: tests/utils/CMakeFiles/test_relation.dir/flags.make
tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o: /root/tools/cado-nfs/tests/utils/test_relation.cpp
tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o: tests/utils/CMakeFiles/test_relation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o -MF CMakeFiles/test_relation.dir/test_relation.cpp.o.d -o CMakeFiles/test_relation.dir/test_relation.cpp.o -c /root/tools/cado-nfs/tests/utils/test_relation.cpp

tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_relation.dir/test_relation.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/tests/utils/test_relation.cpp > CMakeFiles/test_relation.dir/test_relation.cpp.i

tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_relation.dir/test_relation.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/tests/utils/test_relation.cpp -o CMakeFiles/test_relation.dir/test_relation.cpp.s

# Object files for target test_relation
test_relation_OBJECTS = \
"CMakeFiles/test_relation.dir/test_relation.cpp.o"

# External object files for target test_relation
test_relation_EXTERNAL_OBJECTS =

tests/utils/test_relation: tests/utils/CMakeFiles/test_relation.dir/test_relation.cpp.o
tests/utils/test_relation: tests/utils/CMakeFiles/test_relation.dir/build.make
tests/utils/test_relation: utils/libutils.a
tests/utils/test_relation: tests/libtests.a
tests/utils/test_relation: tests/utils/CMakeFiles/test_relation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_relation"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_relation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/utils/CMakeFiles/test_relation.dir/build: tests/utils/test_relation
.PHONY : tests/utils/CMakeFiles/test_relation.dir/build

tests/utils/CMakeFiles/test_relation.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils && $(CMAKE_COMMAND) -P CMakeFiles/test_relation.dir/cmake_clean.cmake
.PHONY : tests/utils/CMakeFiles/test_relation.dir/clean

tests/utils/CMakeFiles/test_relation.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/tests/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/utils/CMakeFiles/test_relation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/utils/CMakeFiles/test_relation.dir/depend

