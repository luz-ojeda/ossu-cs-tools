#!/usr/bin/env bash

# runs numbers.sh until it fails with 42 and saves results to a .txt file

if [ -f results.txt ]; then
    > results.txt
else
    touch results.txt
fi

count=0

while true; do
	((count++))

	./numbers.sh >> results.txt

	if [[ $? -eq 1 ]]; then
		echo "Script failed after $count loops" >> results.txt
		break
	fi
done