#!/bin/bash
# arg1 source file
# arg2 name of bin file
temp=tempfile.o
gcc -c ${1} -o $temp
gcc ${temp} -o ${2}
rm -f ${temp}
if [ ! -d ~/bin ]
then		
	mkdir bin
fi
mv ${2} ~/bin
rm -f ${2}
