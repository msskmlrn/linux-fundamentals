#!/bin/bash

#2011.07.21 11:05    45

while read line
do
	date="$(echo $line | grep -o "[0-9]\{4\}\.[0-9]\{2\}\.[0-9]\{2\}")"
        time="$(echo $line | grep -o "[0-9]\{2\}:[0-9]\{2\}")"
        temperature="$(echo $line | grep -o "[0-9]*°C$" | sed -e s:°C::)"
	printf "%s %s\t%s\n" "$date" "$time" "$temperature"
done
