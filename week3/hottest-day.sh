#!/bin/bash

max_value=0
max_value_file="null"

for file in `find monitor/2012.10.* -name '*temps.txt'`
do
	current=$(grep "PROCESSOR_ZONE" $file | cut -c32-33)
	if [ $max_value -lt $current ]; then
		max_value=$current
		max_value_file=$file
	fi
done

echo ${max_value}C
echo ${max_value_file}
