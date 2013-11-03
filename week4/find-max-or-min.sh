#!/bin/bash

unset csv
unset program
unset dirname
print_help() {
	echo "\
	Usage: `basename $0` [-t] -c | -w -p dir
	Arguments:
	  -t        output as tab-separated values
	  -c        find the coldest temperature
	  -w        find the warmest temperature
	  -p dir    search all subdirs of dir"
}
 
while getopts ":htcwp:" opt; do
	case "$opt" in
		w) warm=1
		;;
        	c) cold=1
		;;
		p) path=$OPTARG
		;;
		t) tab=1
		;;
        	h) print_help 
		;;
        esac
done

if [[ -z $path ]]
then
	echo "A valid path must be given with the -p option";
	exit 1;
fi

if [[ ! -z $warm ]]; then
	if [[ ! -z $tab ]]; then
		echo "$(./max-temp.sh ${path} | ./in-tsv-format.sh)"
	else	
		echo "$(./max-temp.sh ${path})"
	fi
fi

if [[ ! -z $cold ]]; then
	if [[ ! -z $tab ]]; then
		echo "$(./min-temp.sh ${path} | ./in-tsv-format.sh)"
	else	
		echo "$(./min-temp.sh ${path})"
	fi
fi
