#!/bin/sh
# Author: Ankush Garg

if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
	
	path=$(dirname "$writefile")
	
	mkdir -p $path
  echo $writestr > $writefile
	if [ $? -ne "0" ]
	then
	  echo "FAILED: Invalid Directory"
		exit 1
	fi
	
	echo "File created Successfully"
	exit 0	

else
	echo "FAILED: Missing Parameters"
	exit 1

fi
