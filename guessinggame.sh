#!/usr/bin/env bash

echo "Welcome to the guessing game!"

function user_guess {
       echo "Guess the right number of files in the current directory:"
       read guess
     files=$(ls -1 | wc -l)
}

user_guess

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]]
	then
		echo "Your guess was too low!"
	else
		echo "Your guess was too high!"
	fi
	user_guess
done

echo "That was correct!"
echo "Here is the list of files in the current directory:"
echo "...." && ls -1
