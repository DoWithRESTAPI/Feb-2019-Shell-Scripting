#!/bin/bash
req_time=13

i=1

while [ $i -le $req_time ]
do
   echo "The line no: $i"
   echo "Hello World"
   echo "This is with while loop"
   i=$(( i + 1 ))
done
