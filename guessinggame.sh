#!/bin/bash
#Filname = guessinggame.sh

#Determine the number of files in the directory
function filenumbers {
   ls | wc -l
}

fileno=$( filenumbers )

#While loop to keep asking question until correct number is guessed
while [[ $guess -ne $fileno ]]
do

#Ask the question and get the guess
   echo "Guess the number of files in this directory:"
   read guess


#Compare against actual number of files and respond accordingly
   if [[ $guess -gt $fileno ]]
   then
      echo "Your guess is too high."
   elif [[ $guess -lt $fileno ]]
   then
      echo "Your guess is too low." 
   elif [[ $guess -eq $fileno ]]
   then
      echo "Congrats you got it!"
   else
      echo "That is not a valid entry."
   fi

done

