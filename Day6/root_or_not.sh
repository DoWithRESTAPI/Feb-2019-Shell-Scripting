#!/bin/bash
uid_value=$( id -u ${USER} )
echo "The uid value for ${USER} is ${uid_value}"
if [[ ! ${uid_value} -eq 0 ]]
then
  echo "You are not the root user, Please run this code from root user"
  exit 1
fi 
 
