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
include utils/CMakeFiles/cachesize.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include utils/CMakeFiles/cachesize.dir/compiler_depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/cachesize.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/cachesize.dir/flags.make

utils/CMakeFiles/cachesize.dir/cachesize.c.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/cachesize.c.o: /root/tools/cado-nfs/utils/cachesize.c
utils/CMakeFiles/cachesize.dir/cachesize.c.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object utils/CMakeFiles/cachesize.dir/cachesize.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/cachesize.c.o -MF CMakeFiles/cachesize.dir/cachesize.c.o.d -o CMakeFiles/cachesize.dir/cachesize.c.o -c /root/tools/cado-nfs/utils/cachesize.c

utils/CMakeFiles/cachesize.dir/cachesize.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cachesize.dir/cachesize.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/utils/cachesize.c > CMakeFiles/cachesize.dir/cachesize.c.i

utils/CMakeFiles/cachesize.dir/cachesize.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cachesize.dir/cachesize.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/utils/cachesize.c -o CMakeFiles/cachesize.dir/cachesize.c.s

utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o: /root/tools/cado-nfs/utils/cachesize_cpuid.c
utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o -MF CMakeFiles/cachesize.dir/cachesize_cpuid.c.o.d -o CMakeFiles/cachesize.dir/cachesize_cpuid.c.o -c /root/tools/cado-nfs/utils/cachesize_cpuid.c

utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cachesize.dir/cachesize_cpuid.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/utils/cachesize_cpuid.c > CMakeFiles/cachesize.dir/cachesize_cpuid.c.i

utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cachesize.dir/cachesize_cpuid.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/utils/cachesize_cpuid.c -o CMakeFiles/cachesize.dir/cachesize_cpuid.c.s

utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o: /root/tools/cado-nfs/utils/cachesize_guess.c
utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o -MF CMakeFiles/cachesize.dir/cachesize_guess.c.o.d -o CMakeFiles/cachesize.dir/cachesize_guess.c.o -c /root/tools/cado-nfs/utils/cachesize_guess.c

utils/CMakeFiles/cachesize.dir/cachesize_guess.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cachesize.dir/cachesize_guess.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/utils/cachesize_guess.c > CMakeFiles/cachesize.dir/cachesize_guess.c.i

utils/CMakeFiles/cachesize.dir/cachesize_guess.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cachesize.dir/cachesize_guess.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/utils/cachesize_guess.c -o CMakeFiles/cachesize.dir/cachesize_guess.c.s

utils/CMakeFiles/cachesize.dir/timing.cpp.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/timing.cpp.o: /root/tools/cado-nfs/utils/timing.cpp
utils/CMakeFiles/cachesize.dir/timing.cpp.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object utils/CMakeFiles/cachesize.dir/timing.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/timing.cpp.o -MF CMakeFiles/cachesize.dir/timing.cpp.o.d -o CMakeFiles/cachesize.dir/timing.cpp.o -c /root/tools/cado-nfs/utils/timing.cpp

utils/CMakeFiles/cachesize.dir/timing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cachesize.dir/timing.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/utils/timing.cpp > CMakeFiles/cachesize.dir/timing.cpp.i

utils/CMakeFiles/cachesize.dir/timing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cachesize.dir/timing.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/utils/timing.cpp -o CMakeFiles/cachesize.dir/timing.cpp.s

utils/CMakeFiles/cachesize.dir/memusage.cpp.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/memusage.cpp.o: /root/tools/cado-nfs/utils/memusage.cpp
utils/CMakeFiles/cachesize.dir/memusage.cpp.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object utils/CMakeFiles/cachesize.dir/memusage.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/memusage.cpp.o -MF CMakeFiles/cachesize.dir/memusage.cpp.o.d -o CMakeFiles/cachesize.dir/memusage.cpp.o -c /root/tools/cado-nfs/utils/memusage.cpp

utils/CMakeFiles/cachesize.dir/memusage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cachesize.dir/memusage.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/utils/memusage.cpp > CMakeFiles/cachesize.dir/memusage.cpp.i

utils/CMakeFiles/cachesize.dir/memusage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cachesize.dir/memusage.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/utils/memusage.cpp -o CMakeFiles/cachesize.dir/memusage.cpp.s

utils/CMakeFiles/cachesize.dir/version_info.c.o: utils/CMakeFiles/cachesize.dir/flags.make
utils/CMakeFiles/cachesize.dir/version_info.c.o: utils/version_info.c
utils/CMakeFiles/cachesize.dir/version_info.c.o: utils/CMakeFiles/cachesize.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object utils/CMakeFiles/cachesize.dir/version_info.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT utils/CMakeFiles/cachesize.dir/version_info.c.o -MF CMakeFiles/cachesize.dir/version_info.c.o.d -o CMakeFiles/cachesize.dir/version_info.c.o -c /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/version_info.c

utils/CMakeFiles/cachesize.dir/version_info.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cachesize.dir/version_info.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/version_info.c > CMakeFiles/cachesize.dir/version_info.c.i

utils/CMakeFiles/cachesize.dir/version_info.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cachesize.dir/version_info.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/version_info.c -o CMakeFiles/cachesize.dir/version_info.c.s

# Object files for target cachesize
cachesize_OBJECTS = \
"CMakeFiles/cachesize.dir/cachesize.c.o" \
"CMakeFiles/cachesize.dir/cachesize_cpuid.c.o" \
"CMakeFiles/cachesize.dir/cachesize_guess.c.o" \
"CMakeFiles/cachesize.dir/timing.cpp.o" \
"CMakeFiles/cachesize.dir/memusage.cpp.o" \
"CMakeFiles/cachesize.dir/version_info.c.o"

# External object files for target cachesize
cachesize_EXTERNAL_OBJECTS =

utils/cachesize: utils/CMakeFiles/cachesize.dir/cachesize.c.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/cachesize_cpuid.c.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/cachesize_guess.c.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/timing.cpp.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/memusage.cpp.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/version_info.c.o
utils/cachesize: utils/CMakeFiles/cachesize.dir/build.make
utils/cachesize: utils/CMakeFiles/cachesize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable cachesize"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cachesize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/cachesize.dir/build: utils/cachesize
.PHONY : utils/CMakeFiles/cachesize.dir/build

utils/CMakeFiles/cachesize.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils && $(CMAKE_COMMAND) -P CMakeFiles/cachesize.dir/cmake_clean.cmake
.PHONY : utils/CMakeFiles/cachesize.dir/clean

utils/CMakeFiles/cachesize.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils /root/tools/cado-nfs/build/dkcd7jqtSk17et/utils/CMakeFiles/cachesize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/cachesize.dir/depend
