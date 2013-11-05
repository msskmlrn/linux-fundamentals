#!/bin/bash

summ=0

for var in "$@"
do
	summ=$((summ + var))
done

echo "scale=2; $summ / $#" | bc
