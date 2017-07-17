#!/bin/bash
# filename getip.sh

# 返回域名对应IP

host $1 | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]'
