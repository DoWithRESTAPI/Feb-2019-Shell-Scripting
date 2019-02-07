#!/bin/bash


if [[  $# -eq 0  ]]
then
   echo "Usage: $0  <service_name>"
   exit 45
fi

echo "Now we are going to start your $1 service"

if [[ $# -eq 1   ]]
then
   service_name=$1
   echo $service_name
   echo "Starting your service"
   sudo systemctl start $service_name
   status_ctl=$?
   if [[ ${status_ctl} -ne 0 ]]
   then
      echo "The status value is: ${status_ctl}"
      echo "Unable to find your service name"
   fi
   echo "started your service"
fi
