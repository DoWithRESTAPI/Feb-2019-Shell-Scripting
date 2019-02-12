#!/bin/bash

<< for1
for x in 2 2 2 2 2 2
do
   echo "Hello"
done
for1



<< for2
for each in $(seq 1 20)
do
   rem=$(( each % 2 ))
   if [[ ${rem} -eq 0 ]]
   then
      echo "The number is: ${each} and It is even number"
   else
      echo "The number is: ${each} and It is odd number"
   fi
   
done

for2

<< for-3a
for each in $(cat  list_of_servers.txt)
do

  echo "The server is: ${each}"
done
for-3a

for each in $(cat new_list_of_servers.txt)
do
  echo "The server is: ${each}"
done





















