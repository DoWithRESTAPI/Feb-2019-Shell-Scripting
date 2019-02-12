#!/bin/bash
number=56
chances=3
i=0
for each in $(seq 1 3 )
do
   read -p "Enter number: "  user_input
   if [[ ${user_input} -eq ${number} ]]
   then
      echo "YOur guess is correct"
      break 
   else
     # echo "Your guess is wrong"
      chances=$(( chances -1 ))
      echo "You are having ${chances} more chanes"
   fi

done



if [[ $i -eq 3 ]]
then
   echo "Your three changes are over"
fi
