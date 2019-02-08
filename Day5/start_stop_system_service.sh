#!/bin/bash

if [[ $# -ne 2 ]] 
then
  echo "Usage: $0 <System_Service_Name> <start/stop>"
  exit 2
fi 

service_name=$1
action=$2
curr_status=`systemctl status httpd | grep Active | awk '{ print $2 }'`
#curr_status=`systemctl status httpd |  awk 'NR==3{ print $2 }'`
echo "The current status of ${service_name} is: ${curr_status}"
if [[ "${action}" = "start" ]]
then
   if [[ "${curr_status}" = "inactive" ]]
   then
     echo "We are string ${service_name}"
     sudo systemctl start ${service_nam}
     if [[ $? -eq 0 ]]
     then
        echo "Now your ${service_name} is started"
     else
        echo "Sorry unable to start your service"
     fi
   else
     echo "Already service ${service_name} is running"
   fi 
else 
   echo "write code to stop"
fi 














#echo "sudo systemctl ${action} ${service_name}"
#sudo systemctl ${action} ${service_name}
