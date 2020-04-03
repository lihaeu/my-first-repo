#!/usr/bin/env bash

function guessinggame {

 local dir_files=$(ls -l | egrep ^- | wc -l)

 echo How many files are in the current directory?
 read response

 while [[ $response -ne $dir_files ]] 
 do
  if [[ $response -gt $dir_files ]]
  then
   echo "The number was too high. Try again."
  elif [[ $response -lt $dir_files ]]
  then
   echo "The number was too low. Try again."
  fi
  read response
 done

 if [[ $response -eq $dir_files ]]
 then
  echo "Congratulations! This is the correct number."
 fi
}


