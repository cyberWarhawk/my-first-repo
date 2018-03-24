#!/usr/bin/env bash

echo "[ Guessing game ]"

function guess {
	echo "Please enter the number of files in the current directory:"
	read input
    files=$(ls -1 | wc -l)
}

guess

while [[ $input -ne $files ]]
do
	if [[ $input -lt $files ]] 
	then
		echo "Sorry!!! That was too low."
	else
		echo "Sorry!!! That was too high."
	fi
	guess
done

echo "Congratulations! that was the correct answer, this is the list of files:"
echo "---" && ls -1
