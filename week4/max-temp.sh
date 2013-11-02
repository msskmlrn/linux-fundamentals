#!/bin/bash

max_value=0
max_value_file="null"

for folder in $*
do
	for file in $(find $folder -name '*temps.txt')
	do

	#get the line with PROCESSOR_ZONE information
	#then replace all spaces and backslashes with commas
	#then get the processor temperature
	#then remove the C

		current=$(grep "PROCESSOR_ZONE" $file | sed -e 's: \+:,:g' -e 's:/:,:g' | cut -d ',' -f3 | sed -e 's:C::')
		if [ $max_value -lt $current ]; then
			max_value=$current
			max_value_file=$file
		fi
	done
done
echo ${max_value}C
echo ${max_value_file}
