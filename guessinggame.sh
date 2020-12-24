#!/usr/bin/env bash
# File: guessinggame.sh

response=-1

function countfiles {
	global counter=0
	echo "counter is: $counter"

	for code in $(ls)
	do
		echo "$code is in this directory"
		let counter=$counter+1
	done
}

countfiles

function comparenums {
	if [[ $response -gt $counter ]] 
	then
		echo "$response is Too High"
		enterguess
	elif [[ $response -lt $counter ]]
	then
		echo "$response is Too Low"
		enterguess
	else
		echo "Congratulations. $response is correct"
	fi
}
function enterguess {
	echo "Guess the number of files in this directory."
	echo "Enter your guess and then press Enter:"
	read response
	comparenums
}

if [[ $response = $counter ]]
then
	echo ""
else
	enterguess
fi
