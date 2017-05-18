#!/bin/bash
if [ -z $1 ]
then
	echo "Usage: arg1 is empty"
	exit 1
else
	username=$1
fi

for temp in `who | awk '{print $1}'`
do
	if [ $temp = $username ]
	then
		echo "$temp is running"
	fi
done

