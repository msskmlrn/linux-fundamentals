#!/bin/bash

summ=0
params=0

for var in "$@"
do
	summ=$((summ + var))
	((params++))
done

echo "scale=2; $summ / $params" | bc
