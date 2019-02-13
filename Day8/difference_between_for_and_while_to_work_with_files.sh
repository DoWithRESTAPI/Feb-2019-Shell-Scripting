#!/bin/bash

<< forl
for each in $( cat file1.txt )
do
  echo "The line is: ${each}"
done


for each in $(cat file2.txt )
do
  echo "The line is :${each}"
done

forl


while read line
do
  echo $line

done < file1.txt


while read line
do
  echo $line
done < file2.txt
