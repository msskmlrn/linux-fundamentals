#!/bin/bash

if ! [[ "$1" != *[!0-9]* && $1 -ne 0 ]]; then
	echo "Error, only positive integers are allowed."
	exit 1;
fi

if [ "$1" -eq 1 ] ; then
	cat "shortcat.txt"
else 	
	head -n10 shortcat.txt #the head portion of the cat is always the same

	#extend the stomach the specified amount
	i="1"

	while [ $i -lt $1 ]
	do
		sed -n 11p shortcat.txt
		((i++))
	done

	head -n17 shortcat.txt | tail -n+11 #print lines 12-17 (the bottom part)
	tail -n1 shortcat.txt | sed -e s/Short/Long/ #replace Short with Long in the text
fi


