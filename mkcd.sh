#!/bin/bash
filename=${1}
if test -d ${filename}
then
	echo "Failed to make dietionary"
else
	mkdir ${filename}
	cd ${filename}
	echo "Success, Current path is"$(pwd)
fi
