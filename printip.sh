#!/bin/bash
#File name: print ip address
function usage(){
	echo Usage : $0 '[option] [set]'
	echo -dev print dev list
	echo -ip print ip of dev
}
function dev(){
	echo -n 'dev list: '
	for dev in $(ifconfig |  cut -c-7 | tr -d '\n' | tr -s ' ' )
	do
		echo -n $dev' '
	done
	echo 
}
function showip(){
	ifconfig $1 | grep -e 'inet ' | awk -F ' ' '{ print $2}' | awk -F ':' '{print $2}'
}
case $1 in
	-dev)
	 dev 
	;;
	-ip)
	 showip $2 
	;;
	-h) 
	usage 
	;;
	*) 
	usage
	;;
esac
