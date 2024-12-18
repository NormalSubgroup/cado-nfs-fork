# CMake generated Testfile for 
# Source directory: /root/tools/cado-nfs/tests/misc
# Build directory: /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(builddep_testcheck_rels "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "testcheck_rels_dependencies")
set_tests_properties(builddep_testcheck_rels PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;1;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(testcheck_rels "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "env" "bash" "/root/tools/cado-nfs/tests/misc/testcheck_rels.sh" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/check_rels")
set_tests_properties(testcheck_rels PROPERTIES  DEPENDS "builddep_testcheck_rels" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;1;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_descent_init_Fp_jl "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "descent_init_Fp_jl_dependencies")
set_tests_properties(builddep_descent_init_Fp_jl PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;6;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(descent_init_Fp_jl "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/descent_init_Fp" "-jl" "-poly" "/root/tools/cado-nfs/tests/misc/p30.poly" "-mt" "2" "-minB1" "200" "-mineff" "1000" "-maxeff" "100000" "-side" "1" "-lpb" "22" "-seed" "42" "701173953068971112417987441927" "128476523876523762325")
set_tests_properties(descent_init_Fp_jl PROPERTIES  DEPENDS "builddep_descent_init_Fp_jl" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;6;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_on_the_fly_mnfsdl "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_on_the_fly_mnfsdl_dependencies")
set_tests_properties(builddep_test_renumber_on_the_fly_mnfsdl PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;16;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(test_renumber_on_the_fly_mnfsdl "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/debug_renumber" "-poly" "/root/tools/cado-nfs/tests/misc/test_renumber.data/mnfs5.poly" "-lpbs" "11,10,10,10,10" "-check" "-build" "-quiet")
set_tests_properties(test_renumber_on_the_fly_mnfsdl PROPERTIES  DEPENDS "builddep_test_renumber_on_the_fly_mnfsdl" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;16;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_on_the_fly_snfs "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_on_the_fly_snfs_dependencies")
set_tests_properties(builddep_test_renumber_on_the_fly_snfs PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;23;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(test_renumber_on_the_fly_snfs "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/debug_renumber" "-poly" "/root/tools/cado-nfs/parameters/polynomials/F9.poly" "-lpbs" "10,10" "-check" "-build" "-quiet")
set_tests_properties(test_renumber_on_the_fly_snfs PROPERTIES  DEPENDS "builddep_test_renumber_on_the_fly_snfs" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;23;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_on_the_fly_gnfs "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_on_the_fly_gnfs_dependencies")
set_tests_properties(builddep_test_renumber_on_the_fly_gnfs PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;30;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(test_renumber_on_the_fly_gnfs "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/debug_renumber" "-poly" "/root/tools/cado-nfs/parameters/polynomials/rsa768.poly" "-lpbs" "10,10" "-check" "-build" "-quiet")
set_tests_properties(test_renumber_on_the_fly_gnfs PROPERTIES  DEPENDS "builddep_test_renumber_on_the_fly_gnfs" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;30;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_on_the_fly_gnfs2_30003 "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_on_the_fly_gnfs2_30003_dependencies")
set_tests_properties(builddep_test_renumber_on_the_fly_gnfs2_30003 PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;39;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(test_renumber_on_the_fly_gnfs2_30003 "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/test.sh" "--" "/root/tools/cado-nfs/build/dkcd7jqtSk17et/misc/debug_renumber" "-poly" "/root/tools/cado-nfs/parameters/polynomials/rsa768.poly" "-lpbs" "20,21" "-check" "-build" "-quiet")
set_tests_properties(test_renumber_on_the_fly_gnfs2_30003 PROPERTIES  DEPENDS "builddep_test_renumber_on_the_fly_gnfs2_30003" SKIP_RETURN_CODE "125" TIMEOUT "60" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;39;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_file "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_file_dependencies")
set_tests_properties(builddep_test_renumber_file PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;50;cado_define_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(builddep_test_renumber_file_mnfs5 "/usr/bin/cmake" "--build" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "--target" "test_renumber_file_mnfs5_dependencies")
set_tests_properties(builddep_test_renumber_file_mnfs5 PROPERTIES  _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;305;add_test;/root/tools/cado-nfs/tests/cado_divert_test.cmake;76;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;58;cado_divert_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")
add_test(test_renumber_file_mnfs5 "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/misc" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/misc" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "wdir" "/root/tools/cado-nfs/tests/test.sh" "--" "env" "bash" "/root/tools/cado-nfs/tests/misc/test_renumber.sh" "-b" "/root/tools/cado-nfs/build/dkcd7jqtSk17et" "-poly" "/root/tools/cado-nfs/tests/misc/test_renumber.data/mnfs5.poly" "-lpbs" "11,10,10,10,10")
set_tests_properties(test_renumber_file_mnfs5 PROPERTIES  DEPENDS "builddep_test_renumber_file_mnfs5" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_divert_test.cmake;76;cado_epilogue_create_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;58;cado_divert_test;/root/tools/cado-nfs/tests/misc/CMakeLists.txt;0;")