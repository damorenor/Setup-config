#!/bin/bash

EXEC=script

g++ -o $EXEC script.cpp -std=c++11 -Wall -O2 -DLOCAL
if [ $? -eq 0 ]; then
	echo "Compiled Successfully :D"
	./$EXEC < input.txt
else
    echo "Keep trying m8"
fi
