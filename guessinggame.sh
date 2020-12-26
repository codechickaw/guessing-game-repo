#!/usr/bin/env bash
# File: guessinggame.sh

response=-1
function countfiles {
	counter=0
	for code in $(ls)
	do
		let counter=$counter+1
	done
}
countfiles
function comparenums {
	if [[ $response -ne $counter ]] 
	then
		if [[ $response -gt $counter ]]
		then
			echo "$response is Too High"
			enterguess
		elif [[ $response -lt $counter ]]
		then
			echo "$response is Too Low"
			enterguess
		else
			echo "Please try again."
			enterguess
		fi
	else
		echo "Congratulations. $response is correct"
	fi
}
function enterguess {
	echo "Guess the number of files in this directory."
	echo "Enter your guess and then press Enter:"
	read response
     	if [[ $response =~ ^[0-9]+$ ]]
	then
		comparenums
	else
		enterguess
	fi
}
if [[ $response = $counter ]]
then
	echo ""
else
	enterguess
fi
