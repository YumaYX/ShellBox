#!/bin/sh

function sequence_exe() {
	e_command="${@}"
	${e_command} > /dev/null
	rc="${?}"
	if [ "${rc}" -ne 0 ]; then
		echo "[ERROR]: ${e_command} RC=${rc}"
		exit 255
	else
		echo "[EXECUTE]: ${e_command}"
	fi
	return 0
}
