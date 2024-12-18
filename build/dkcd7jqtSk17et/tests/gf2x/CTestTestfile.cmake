# CMake generated Testfile for 
# Source directory: /root/tools/cado-nfs/tests/gf2x
# Build directory: /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/gf2x
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(builddep_test_cantor "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_cantor_dependencies")
set_tests_properties(builddep_test_cantor PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/gf2x/CMakeLists.txt;24;cado_define_test;/root/tools/cado-nfs/tests/gf2x/CMakeLists.txt;0;")
add_test(test_cantor "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/gf2x" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/gf2x" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/gf2x/test_cantor" "100000")
set_tests_properties(test_cantor PROPERTIES  DEPENDS "builddep_test_cantor" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/gf2x/CMakeLists.txt;24;cado_define_test;/root/tools/cado-nfs/tests/gf2x/CMakeLists.txt;0;")
