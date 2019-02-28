#!/bin/bash

my_se=(httpd nginx sshd mysql)

for each_ind in ${!my_se[@]}
do
 echo "Index is: ${each_ind} and value is: ${my_se[${each_ind}]}"
 echo "NOw starting ${my_se[${each_ind}]}"
done
