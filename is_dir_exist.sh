#!/bin/bash

if [ -d ${1} ]
then
	echo 'dir are exist'
	exit 0
else
	echo 'dir are not exist'
	exit 1
fi
