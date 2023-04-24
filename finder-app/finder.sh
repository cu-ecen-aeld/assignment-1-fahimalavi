#!/bin/bash
bin=$1


if [ $# -eq 2 ]
then
	if [ -d "$1" ]
	then
	   	echo ""
	else
		echo "$1 is not valid"
		exit 1
	fi
	cd $1
	Y="$(grep -r $2 * | wc -l)"
	X="$(grep -r -l $2 * | wc -l)"
else
	echo "Failure::Arguments are less than 2"
	exit 1
fi

echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
