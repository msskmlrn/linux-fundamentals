#!/bin/bash

for folder in $(find $1 -name '*temps.txt' | sed -e "s/[0-9]\{2\}\:[0-9]\{2\}.*//g" | sort -u) 
do
	./min-temp.sh $folder
done
