#!/bin/bash

for file in `find monitor/2012.10.* -name '*temps.txt'`
do
	grep "PROCESSOR_ZONE" $file | cut -c32-34
done | sort | uniq
