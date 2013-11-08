#!/bin/bash

max=-1000
min=1000

#replace empty spaces and slashes with tabs
#grep the rest of the line starting from the timestamp yyyy.mm.dd
#replace the C from the temperatures with nothing

time find $1 -name hp-temps.txt -exec grep "PROCESSOR_ZONE" {} + | sed 's|[ /]\+|\t|g' | grep -o "[0-9]\{4\}\.[0-9]\{2\}\.[0-9]\{2\}.*" | sed 's|\C||g' |

while read yymmdd hhmm _ _ temperature _ _; do
	if [[ "$max" -lt "$temperature" ]]; then
			max="$temperature"
			echo "NEW MAX:" "$yymmdd""$hhmm" "$max"
	fi
	
	if [[ "$temperature" -lt "$min" ]]; then
			min="$temperature"
			echo "NEW MIN:" "$yymmdd""$hhmm" "$min"
	fi
done
