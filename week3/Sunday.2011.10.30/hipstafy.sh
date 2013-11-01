#!/bin/bash

for file in *.jpg
do
	inputfile=${file}
	prefix=${inputfile%.jpg}
	outputfile=$prefix-hipstah.jpg
	convert -sepia-tone 60% +polaroid $inputfile $outputfile
done	
