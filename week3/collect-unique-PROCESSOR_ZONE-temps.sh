#!/bin/bash

#for file in `find . | grep "2011.10.11.*hp-temps\.txt$"`
for file in `find . | grep "2012.10.11.*hp-temps\.txt$"`
do
	grep "PROCESSOR_ZONE" $file | cut -c32-34
done | sort | uniq
