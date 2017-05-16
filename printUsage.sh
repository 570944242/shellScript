#!/bin/bash
echo "memory usage:"
free -m | xargs | awk '{print "Free/total memory:"$17"/"$8"MB"}'
echo "Disk usage"
df -h | xargs | awk '{print "Free/total momory: "$11"/"$9"MB"}'
