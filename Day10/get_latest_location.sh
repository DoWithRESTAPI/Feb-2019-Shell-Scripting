#!/bin/bash
req_dir="/home/ec2-user/Feb-2019-Shell-Scripting/Feb-2019-Shell-Scripting"
req_file="start_stop_system_service.sh"

find ${req_dir} -name ${req_file} > temp_file.txt

latest_date=0
while read line
do

   new_date=`ls --full-time ${line} | awk '{ print $6 }'|tr '-' '.'`
   if [[ "${latest_date}"  < "${new_date}"  ]]
   then
        latest_date=${new_date}
        latest_file=${line}
   fi

done < temp_file.txt


echo "The latest file is: ${latest_file}"
