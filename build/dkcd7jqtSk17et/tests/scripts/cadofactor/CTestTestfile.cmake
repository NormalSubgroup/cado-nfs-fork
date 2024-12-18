# CMake generated Testfile for 
# Source directory: /root/tools/cado-nfs/tests/scripts/cadofactor
# Build directory: /root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_python_cadoparams "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/cadoparams.py")
set_tests_properties(test_python_cadoparams PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_cadoprograms "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/cadoprograms.py")
set_tests_properties(test_python_cadoprograms PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_cadotask "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/cadotask.py")
set_tests_properties(test_python_cadotask PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_workunit "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/workunit.py")
set_tests_properties(test_python_workunit PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_wudb "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/wudb.py")
set_tests_properties(test_python_wudb PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_toplevel "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "TMPDIR" "/root/tools/cado-nfs/tests/test.sh" "--" "python3" "-m" "doctest" "/root/tools/cado-nfs/scripts/cadofactor/toplevel.py")
set_tests_properties(test_python_toplevel PROPERTIES  RUN_SERIAL "1" SKIP_RETURN_CODE "125" TIMEOUT "20" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;17;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
add_test(test_python_wudb_cmdline "env" "CADO_NFS_SOURCE_DIR=/root/tools/cado-nfs" "CADO_NFS_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "CMAKE_CURRENT_SOURCE_DIR=/root/tools/cado-nfs/tests/scripts/cadofactor" "CMAKE_CURRENT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et/tests/scripts/cadofactor" "PROJECT_BINARY_DIR=/root/tools/cado-nfs/build/dkcd7jqtSk17et" "SAGE=/usr/bin/sage" "PYTHONPATH=/root/tools/cado-nfs/scripts" "/root/tools/cado-nfs/tests/provide-wdir.sh" "--env" "wdir" "/root/tools/cado-nfs/tests/test.sh" "--" "env" "bash" "/root/tools/cado-nfs/tests/scripts/cadofactor/test_python_wudb_cmdline.sh" "/root/tools/cado-nfs/scripts/cadofactor/")
set_tests_properties(test_python_wudb_cmdline PROPERTIES  SKIP_RETURN_CODE "125" TIMEOUT "60" _BACKTRACE_TRIPLES "/root/tools/cado-nfs/tests/cado_test.cmake;360;add_test;/root/tools/cado-nfs/tests/cado_define_test.cmake;217;cado_epilogue_create_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;26;cado_define_test;/root/tools/cado-nfs/tests/scripts/cadofactor/CMakeLists.txt;0;")
