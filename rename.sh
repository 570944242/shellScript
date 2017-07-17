#!/bin/bash
# filename rename.sh

# 在文件夹下有很多名字很乱的图片
# 这个脚本 读取文件名列表(去掉图片之外的)
# MD5值取前十位重命名文件
#

for title in `ls | egrep -v '*.sh|txt'` ;
do
  extend=$(echo $title | awk -F '.' '{print "."$2}'); 
  name=$(md5sum $title | awk '{print $1}'| cut -c-10); 
  mv $title `echo $name$extend`;
done 

