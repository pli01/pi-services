#!/bin/bash
#Sample test for service

#1 for fail, 0 for success
test_result=0;

echo "TESTING COMMON "

echo "SETUP"
if [ ! -d test-out ]; then mkdir test-out; fi

echo "TEST"
echo "DOES IT REQUIRE TESTS ? YES !"

echo "TEARDOWN"

exit $test_result;

