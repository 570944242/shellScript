#!/bin/bash
cat /etc/passwd |grep -v nologin |grep -v shutdown |grep -v halt|grep -v sync |awk -F : '{print "username: "$1 ," uid: "$3," groupid :"$4}'
