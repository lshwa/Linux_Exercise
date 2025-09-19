#!/bin/bash

rows=$1
cols=$2

if [ $# -ne 2 ]; then
	echo "Invalid input"
	exit 1
fi

if [ "$rows" -le 0 ] || ["$cols" -le 0 ]; then
	echo "Input must be greater than 0"
	exit 1
fi

for ((i=1; i<=rows; i++)); do
	for ((j=1; j<=cols; j++)); do
		printf "%d*%d=%d " "$i" "$j" $((i*j))
	done
	echo
done

