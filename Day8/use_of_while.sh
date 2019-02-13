#!/bin/bash
x=3

while true
do
  x=$(( x + 13 ))
  if [[ $x -ge 12345 ]] 
  then
     echo "You reached ur requirement and now x value is: ${x}"
     exit 
     sleep 3
  fi
done



echo "This is out of while loop"
