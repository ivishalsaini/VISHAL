#!/usr/bin/env bash

function ask {
	echo "Enter the number of files in directory:"
	read answer
}

ask

numfiles=$(ls | wc -l )

	while [[ $answer -ne $numfiles ]]
	do
		if [[ $answer -gt $numfiles ]]
		then
		echo "Your number is to big - try guess again!"

		elif [[ $answer -lt $numfiles ]]
		then
		echo "Yout estimate number is lower than number of files - you have next chance:"
		fi
	ask
	done

        if [[ $answer -eq $numfiles ]]
        then
                echo "You guess! You win!"
		echo "End the game!"
        fi
