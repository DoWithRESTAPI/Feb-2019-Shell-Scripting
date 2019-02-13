#!/bin/bash
for each_file in `ls $1`
do
   echo "${each_file}"
   file_path=${1}/${each_file}
   echo "The file path is: ${file_path}"
   if [[ -e ${file_path} ]]
   then
     echo "The file is there"
   else
     echo "File is not there"
   fi 
done
