#!/bin/sh

# TestTools
. ./lib/test_tools.sh

# Test Target Files
. ./lib/sequence.sh

# Function Test
# assert_equals EXPECTED_VALUE "$(METHOD ARGV1 ARGV2)"
assert_equal '[EXECUTE]: whoami' "$(sequence_exe whoami)"
assert_equal '[EXECUTE]: ls -l' "$(sequence_exe "ls -l")"
# assert_equal '[ERROR]: not command RC=127' "$(sequence_exe not command)" # => exit
