#!/bin/bash

find $1 -name hp-temps.txt -exec grep "PROCESSOR_ZONE" {} + -exec sed 's|[ /]\+|\t|g' + -exec sort -nuk5 \;
#{} \; -exec sed -i '/./d' {} \;
#find /home/mssiren/Downloads/lost24/monitor -name hp-temps.txt -exec grep "PROCESSOR_ZONE" {} +
