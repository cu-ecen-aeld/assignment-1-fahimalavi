#!/bin/bash

if [ $# -eq 2 ]
then
	mkdir -p "$(dirname "$1")"
	echo $2 > $1
else
	echo "Failure::Arguments are less than 2"
	exit 1
fi

exit 0
