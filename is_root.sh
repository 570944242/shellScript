#!/bin/bash
current_user=$(whoami)
if [ $current = root ]
then
	echo "current user is root"
	exit 0
else
	echo "current suer is $current_user"
	exit 1
fi
