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
include polyselect/CMakeFiles/polyselect_ropt.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.make

# Include the progress variables for this target.
include polyselect/CMakeFiles/polyselect_ropt.dir/progress.make

# Include the compile flags for this target's objects.
include polyselect/CMakeFiles/polyselect_ropt.dir/flags.make

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o: /root/tools/cado-nfs/polyselect/ropt_main.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_main.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_main.c.o -c /root/tools/cado-nfs/polyselect/ropt_main.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_main.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_main.c > CMakeFiles/polyselect_ropt.dir/ropt_main.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_main.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_main.c -o CMakeFiles/polyselect_ropt.dir/ropt_main.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o: /root/tools/cado-nfs/polyselect/best_polynomials_queue.cpp
polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o -MF CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o.d -o CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o -c /root/tools/cado-nfs/polyselect/best_polynomials_queue.cpp

polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/polyselect/best_polynomials_queue.cpp > CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.i

polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/polyselect/best_polynomials_queue.cpp -o CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o: /root/tools/cado-nfs/polyselect/ropt_single_sublattice_priority_queue.cpp
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o -MF CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o -c /root/tools/cado-nfs/polyselect/ropt_single_sublattice_priority_queue.cpp

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_single_sublattice_priority_queue.cpp > CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_single_sublattice_priority_queue.cpp -o CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o: /root/tools/cado-nfs/polyselect/ropt_sublattice_priority_queue.cpp
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o -MF CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o -c /root/tools/cado-nfs/polyselect/ropt_sublattice_priority_queue.cpp

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_sublattice_priority_queue.cpp > CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_sublattice_priority_queue.cpp -o CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o: /root/tools/cado-nfs/polyselect/ropt_sublattice_crt.cpp
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o -MF CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o -c /root/tools/cado-nfs/polyselect/ropt_sublattice_crt.cpp

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_sublattice_crt.cpp > CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_sublattice_crt.cpp -o CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o: /root/tools/cado-nfs/polyselect/ropt.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt.c.o -c /root/tools/cado-nfs/polyselect/ropt.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt.c > CMakeFiles/polyselect_ropt.dir/ropt.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt.c -o CMakeFiles/polyselect_ropt.dir/ropt.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o: /root/tools/cado-nfs/polyselect/ropt_arith.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o -c /root/tools/cado-nfs/polyselect/ropt_arith.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_arith.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_arith.c > CMakeFiles/polyselect_ropt.dir/ropt_arith.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_arith.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_arith.c -o CMakeFiles/polyselect_ropt.dir/ropt_arith.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o: /root/tools/cado-nfs/polyselect/ropt_io.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_io.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_io.c.o -c /root/tools/cado-nfs/polyselect/ropt_io.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_io.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_io.c > CMakeFiles/polyselect_ropt.dir/ropt_io.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_io.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_io.c -o CMakeFiles/polyselect_ropt.dir/ropt_io.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o: /root/tools/cado-nfs/polyselect/ropt_linear.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o -c /root/tools/cado-nfs/polyselect/ropt_linear.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_linear.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_linear.c > CMakeFiles/polyselect_ropt.dir/ropt_linear.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_linear.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_linear.c -o CMakeFiles/polyselect_ropt.dir/ropt_linear.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o: /root/tools/cado-nfs/polyselect/ropt_param.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_param.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_param.c.o -c /root/tools/cado-nfs/polyselect/ropt_param.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_param.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_param.c > CMakeFiles/polyselect_ropt.dir/ropt_param.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_param.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_param.c -o CMakeFiles/polyselect_ropt.dir/ropt_param.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o: /root/tools/cado-nfs/polyselect/ropt_quadratic.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o -c /root/tools/cado-nfs/polyselect/ropt_quadratic.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_quadratic.c > CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_quadratic.c -o CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o: /root/tools/cado-nfs/polyselect/ropt_stage1.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o -c /root/tools/cado-nfs/polyselect/ropt_stage1.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_stage1.c > CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_stage1.c -o CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o: /root/tools/cado-nfs/polyselect/ropt_stage2.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o -c /root/tools/cado-nfs/polyselect/ropt_stage2.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_stage2.c > CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_stage2.c -o CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o: /root/tools/cado-nfs/polyselect/ropt_str.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_str.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_str.c.o -c /root/tools/cado-nfs/polyselect/ropt_str.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_str.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_str.c > CMakeFiles/polyselect_ropt.dir/ropt_str.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_str.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_str.c -o CMakeFiles/polyselect_ropt.dir/ropt_str.c.s

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/flags.make
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o: /root/tools/cado-nfs/polyselect/ropt_tree.c
polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o: polyselect/CMakeFiles/polyselect_ropt.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o -MF CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o.d -o CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o -c /root/tools/cado-nfs/polyselect/ropt_tree.c

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polyselect_ropt.dir/ropt_tree.c.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/tools/cado-nfs/polyselect/ropt_tree.c > CMakeFiles/polyselect_ropt.dir/ropt_tree.c.i

polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polyselect_ropt.dir/ropt_tree.c.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && /root/tools/cado-nfs/build/dkcd7jqtSk17et/ccwrap.pl $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/tools/cado-nfs/polyselect/ropt_tree.c -o CMakeFiles/polyselect_ropt.dir/ropt_tree.c.s

# Object files for target polyselect_ropt
polyselect_ropt_OBJECTS = \
"CMakeFiles/polyselect_ropt.dir/ropt_main.c.o" \
"CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o" \
"CMakeFiles/polyselect_ropt.dir/ropt.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_io.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_param.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_str.c.o" \
"CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o"

# External object files for target polyselect_ropt
polyselect_ropt_EXTERNAL_OBJECTS =

polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_main.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/best_polynomials_queue.cpp.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_single_sublattice_priority_queue.cpp.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_priority_queue.cpp.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_sublattice_crt.cpp.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_arith.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_io.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_linear.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_param.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_quadratic.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage1.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_stage2.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_str.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/ropt_tree.c.o
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/build.make
polyselect/polyselect_ropt: polyselect/libpolyselect_common.a
polyselect/polyselect_ropt: utils/libutils.a
polyselect/polyselect_ropt: polyselect/CMakeFiles/polyselect_ropt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable polyselect_ropt"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polyselect_ropt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
polyselect/CMakeFiles/polyselect_ropt.dir/build: polyselect/polyselect_ropt
.PHONY : polyselect/CMakeFiles/polyselect_ropt.dir/build

polyselect/CMakeFiles/polyselect_ropt.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect && $(CMAKE_COMMAND) -P CMakeFiles/polyselect_ropt.dir/cmake_clean.cmake
.PHONY : polyselect/CMakeFiles/polyselect_ropt.dir/clean

polyselect/CMakeFiles/polyselect_ropt.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect /root/tools/cado-nfs/build/dkcd7jqtSk17et/polyselect/CMakeFiles/polyselect_ropt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : polyselect/CMakeFiles/polyselect_ropt.dir/depend

