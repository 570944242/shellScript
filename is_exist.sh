#!bin/bash

if test -e ${1}
then
	echo 'file exist'
	exit 0
else
	echo "file are does't"
	exit 1
fi
