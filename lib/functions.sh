#!/bin/sh

function method1() {
	echo 'Hello World!'
	return 0
}

function method2() {
	echo "${1}"
	return 0
}
