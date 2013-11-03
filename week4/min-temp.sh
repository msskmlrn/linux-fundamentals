#!/bin/bash

min_value=1000
min_value_file="null"

for folder in $*
do
	for file in $(find $folder -name '*temps.txt')
	do

	#get the line with PROCESSOR_ZONE information
	#then replace all spaces and backslashes with commas
	#then get the processor temperature
	#then remove the C

		current=$(grep "PROCESSOR_ZONE" $file | sed -e 's: \+:,:g' -e 's:/:,:g' | cut -d ',' -f3 | sed -e 's:C::')
		if [ $current -lt $min_value ]; then
			min_value=$current
			min_value_file=$file
		fi
	done
done
echo ${min_value_file} ${min_value}°C
