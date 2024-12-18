# CMake generated Testfile for 
# Source directory: /root/tools/cado-nfs/tests/sqrt
# Build directory: /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sqrt
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(builddep_test_crtalgsqrt "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_crtalgsqrt_dependencies")
set_tests_properties(builddep_test_crtalgsqrt PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/sqrt/CMakeLists.txt;16;cado_define_test;/root/tools/cado-nfs/tests/sqrt/CMakeLists.txt;0;")
add_test(test_crtalgsqrt "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/sqrt" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/sqrt" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "env" "bash" "/root/tools/cado-nfs/tests/do_with_mpi.sh" "nompi" "/root/tools/cado-nfs/tests/sqrt/test_crtalgsqrt.sh" "/root/tools/cado-nfs/tests/sqrt/c30.dep.000" "/root/tools/cado-nfs/tests/sqrt/c30.ratdep.000" "/root/tools/cado-nfs/tests/sqrt/c30.poly")
set_tests_properties(test_crtalgsqrt PROPERTIES  DEPENDS "builddep_test_crtalgsqrt" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/sqrt/CMakeLists.txt;16;cado_define_test;/root/tools/cado-nfs/tests/sqrt/CMakeLists.txt;0;")
