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
include filter/CMakeFiles/sm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include filter/CMakeFiles/sm.dir/compiler_depend.make

# Include the progress variables for this target.
include filter/CMakeFiles/sm.dir/progress.make

# Include the compile flags for this target's objects.
include filter/CMakeFiles/sm.dir/flags.make

filter/CMakeFiles/sm.dir/sm.cpp.o: filter/CMakeFiles/sm.dir/flags.make
filter/CMakeFiles/sm.dir/sm.cpp.o: /root/tools/cado-nfs/filter/sm.cpp
filter/CMakeFiles/sm.dir/sm.cpp.o: filter/CMakeFiles/sm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object filter/CMakeFiles/sm.dir/sm.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT filter/CMakeFiles/sm.dir/sm.cpp.o -MF CMakeFiles/sm.dir/sm.cpp.o.d -o CMakeFiles/sm.dir/sm.cpp.o -c /root/tools/cado-nfs/filter/sm.cpp

filter/CMakeFiles/sm.dir/sm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sm.dir/sm.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/filter/sm.cpp > CMakeFiles/sm.dir/sm.cpp.i

filter/CMakeFiles/sm.dir/sm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sm.dir/sm.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/filter/sm.cpp -o CMakeFiles/sm.dir/sm.cpp.s

# Object files for target sm
sm_OBJECTS = \
"CMakeFiles/sm.dir/sm.cpp.o"

# External object files for target sm
sm_EXTERNAL_OBJECTS =

filter/sm: filter/CMakeFiles/sm.dir/sm.cpp.o
filter/sm: filter/CMakeFiles/sm.dir/build.make
filter/sm: utils/libutils_with_io.a
filter/sm: utils/libutils.a
filter/sm: filter/CMakeFiles/sm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sm"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
filter/CMakeFiles/sm.dir/build: filter/sm
.PHONY : filter/CMakeFiles/sm.dir/build

filter/CMakeFiles/sm.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter && $(CMAKE_COMMAND) -P CMakeFiles/sm.dir/cmake_clean.cmake
.PHONY : filter/CMakeFiles/sm.dir/clean

filter/CMakeFiles/sm.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/filter /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter /root/tools/cado-nfs/build/dkcd7jqtSk17et/filter/CMakeFiles/sm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : filter/CMakeFiles/sm.dir/depend
