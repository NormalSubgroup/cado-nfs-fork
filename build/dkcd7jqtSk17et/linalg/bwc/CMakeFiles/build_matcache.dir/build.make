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
include linalg/bwc/CMakeFiles/build_matcache.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include linalg/bwc/CMakeFiles/build_matcache.dir/compiler_depend.make

# Include the progress variables for this target.
include linalg/bwc/CMakeFiles/build_matcache.dir/progress.make

# Include the compile flags for this target's objects.
include linalg/bwc/CMakeFiles/build_matcache.dir/flags.make

linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o: linalg/bwc/CMakeFiles/build_matcache.dir/flags.make
linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o: /root/tools/cado-nfs/linalg/bwc/build_matcache.cpp
linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o: linalg/bwc/CMakeFiles/build_matcache.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o -MF CMakeFiles/build_matcache.dir/build_matcache.cpp.o.d -o CMakeFiles/build_matcache.dir/build_matcache.cpp.o -c /root/tools/cado-nfs/linalg/bwc/build_matcache.cpp

linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/build_matcache.dir/build_matcache.cpp.i"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/tools/cado-nfs/linalg/bwc/build_matcache.cpp > CMakeFiles/build_matcache.dir/build_matcache.cpp.i

linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/build_matcache.dir/build_matcache.cpp.s"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && /root/tools/cado-nfs/build/dkcd7jqtSk17et/cxxwrap.pl $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/tools/cado-nfs/linalg/bwc/build_matcache.cpp -o CMakeFiles/build_matcache.dir/build_matcache.cpp.s

# Object files for target build_matcache
build_matcache_OBJECTS = \
"CMakeFiles/build_matcache.dir/build_matcache.cpp.o"

# External object files for target build_matcache
build_matcache_EXTERNAL_OBJECTS =

linalg/bwc/build_matcache: linalg/bwc/CMakeFiles/build_matcache.dir/build_matcache.cpp.o
linalg/bwc/build_matcache: linalg/bwc/CMakeFiles/build_matcache.dir/build.make
linalg/bwc/build_matcache: linalg/bwc/libbwc_base.a
linalg/bwc/build_matcache: linalg/bwc/libbwc_base.a
linalg/bwc/build_matcache: linalg/bblas/libbblas.a
linalg/bwc/build_matcache: linalg/bwc/libbwc_arith.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b64_bucket.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b64_basic.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b64_sliced.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_bz_bucket.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_bz_basic.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_bz_sliced.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b128_bucket.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b128_basic.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b128_sliced.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b256_bucket.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b256_basic.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_b256_sliced.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_pz_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_pz_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p1_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p1_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p2_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p2_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p3_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p3_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p4_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p4_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p5_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p5_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p6_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p6_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p7_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p7_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p8_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p8_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p9_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p9_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p10_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p10_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p11_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p11_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p12_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p12_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p13_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p13_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p14_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p14_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p15_basicp.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_p15_zone.a
linalg/bwc/build_matcache: linalg/bwc/libmatmul_common.a
linalg/bwc/build_matcache: utils/libutils.a
linalg/bwc/build_matcache: linalg/bwc/CMakeFiles/build_matcache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/tools/cado-nfs/build/dkcd7jqtSk17et/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable build_matcache"
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/build_matcache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
linalg/bwc/CMakeFiles/build_matcache.dir/build: linalg/bwc/build_matcache
.PHONY : linalg/bwc/CMakeFiles/build_matcache.dir/build

linalg/bwc/CMakeFiles/build_matcache.dir/clean:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc && $(CMAKE_COMMAND) -P CMakeFiles/build_matcache.dir/cmake_clean.cmake
.PHONY : linalg/bwc/CMakeFiles/build_matcache.dir/clean

linalg/bwc/CMakeFiles/build_matcache.dir/depend:
	cd /root/tools/cado-nfs/build/dkcd7jqtSk17et && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/tools/cado-nfs /root/tools/cado-nfs/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc /root/tools/cado-nfs/build/dkcd7jqtSk17et/linalg/bwc/CMakeFiles/build_matcache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : linalg/bwc/CMakeFiles/build_matcache.dir/depend

