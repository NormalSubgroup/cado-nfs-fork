#!/usr/bin/env bash

. "$(dirname $0)/000-functions.sh"
. "$(dirname $0)/001-environment.sh"

NCPUS=`"$(dirname $0)/utilities/ncpus.sh"`
export NCPUS
export OMP_DYNAMIC=true STATS_PARSING_ERRORS_ARE_FATAL=1

if ! [ "$using_cmake_directly" ] ; then
    eval $("${MAKE}" show)
fi

if [ "$coverage" ] ; then
    echo "geninfo_unexecuted_block = 1" >> ~/.lcovrc

    # This is a wild guess. It seems that it is not documented...
    echo "ignore_errors = negative" >> ~/.lcovrc

    # (not sure it's still relevant)
    #
    # The "base" coverage file has zero coverage for every instrumented
    # line of the project. At a later stage, we will combine this data
    # file with coverage data files captured after the test run. This way
    # the percentage of total lines covered will always be correct, even
    # when not all source code files were loaded during the test(s).
    enter_section "coverage" "preparing base coverage data"

    # might be useful. We don't want to bother with traces of config
    # checks.
    find $build_tree -name '*conftest.gcno' -o -name 'CMake*.gcno' | xargs -r rm -v

    C=coverage-$CI_COMMIT_SHORT_SHA-$CI_JOB_ID
    set -x

    src_tree=$PWD
    (cd $build_tree ; time gcovr --merge-mode-functions=separate -r $src_tree --json $src_tree/${C}-base.json)


    set +x
    leave_section
fi

if [ "$CHECKS_EXPENSIVE" ] ; then
    enter_section "xtest" "Running expensive tests"
else
    enter_section "test" "Running tests"
fi
set +e
# --no-compress-output is perhaps better for test uploading, as ctest
# likes to store as zlib but headerless, which is a bit of a pain

ctest_args=(
    -T Test
    --no-compress-output
    --test-output-size-passed 4096
    --test-output-size-failed 262144
)

if [ "$using_cmake_directly" ] ; then
    set -o pipefail
    (cd "$build_tree" ; ctest -j$NCPUS "${ctest_args[@]}") | "$source_tree"/scripts/filter-ctest.pl
else
    "${MAKE}" check ARGS="-j$NCPUS ${ctest_args[*]}"
fi
rc=$?
set -e
leave_section # test (or xtest)

if [ "$coverage" ] ; then
    enter_section "coverage" "extracting coverage data"

    set -x

    (cd $build_tree ; time gcovr --merge-mode-functions=separate -r $src_tree --json $src_tree/${C}-app.json)

    set +x

    if [ "$build_tree" != generated ] ; then
        echo "This part of the script assumes that build_tree=generated"
    fi

    generated=($(find "$build_tree" -name '*.[ch]' -o -name '*.[ch]pp'))
    tar czf ${C}-generated-sources.tar.gz "${generated[@]}"
    leave_section
fi

STATUS=
if ! [ "$rc" = 0 ] ; then
    STATUS="FAILED "
fi
enter_section "postprocessing" "Post-processing ${STATUS}ctest result into JUnit format"
xmls=(`find "$build_tree/Testing" -name Test.xml`)
if [ "${#xmls[@]}" = 1 ] ; then
    xsltproc "$(dirname $0)/utilities/ctest-to-junit.xsl" "${xmls[0]}" > junit.xml
    $ECHO_E "${CSI_BLUE}20 most expensive tests (real time):${CSI_RESET}"
    perl -ne '/testcase.*" name="([^"]+)" time="([\d\.]+)"/ && print "$2 $1\n";' junit.xml  |sort -n | tail -n 20
else
    echo "Error, we expected one test xml file, we got ${#xmls[@]} (setting job as failed)" >&2
    for f in "${xmls[@]}" ; do ls -l "$f" >&2 ; done
    rc=1
fi
leave_section # postprocessing

exit $rc
