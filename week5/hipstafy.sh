#!/bin/bash

outdir=~/Desktop/hipstafy-dropbox/hipstafied/

for file in "$1" 
do
	if [[ "$file" == *.jpg ]]
	then
		inputfile=${file}
	
		basename="$(basename "$inputfile" .jpg)"
		inbase="$(basename "$inputfile")"
		outbase=$basename-hipstah.jpg
	
		convert -sepia-tone 60% +polaroid $inputfile $outdir$outbase
	fi
done
