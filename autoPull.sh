#!/bin/bash
index=1
while [ 1 -eq 1 ]
do
	echo ${index}
	index=`expr ${index} + 1`
	git pull
	sleep 60
done
