#!/bin/sh

# TestTools
. ./lib/test_tools.sh

# Test Target Files
. ./lib/functions.sh

# Function Test
# assert_equals EXPECTED_VALUE "$(METHOD ARGV1 ARGV2)"
assert_equal 'Hello World!' "$(method1)"
assert_equal 2 "$(method2 2)"
# assert_equal x "$(method2 y)" # => exit