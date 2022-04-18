#!/bin/sh

count_count=0
correct_count=0
error_count=0

function separator(){
	echo "#################### ${1}"
	return 0
}

function assert_equal() {
	evalue="${1}"
	rvalue="${2}"
	count_count=$((count_count+1))
	if [[ "${evalue}" == "${rvalue}" ]]; then
		echo '.'
		correct_count=$((correct_count+1))
	else
		echo "E\n"
		display_expect_and_real "${evalue}" "${rvalue}"
		error_count=$((error_count+1))
		display_outcome
		exit 10
	fi
	return 0
}

function display_expect_and_real() {
	echo "Expected: ${1}"
	echo "Real:     ${2}"
	return 0
}

function display_outcome() {
	separator
	echo "Execute:${count_count}, OK:${correct_count}, NG:${error_count}"
	return 0
}
