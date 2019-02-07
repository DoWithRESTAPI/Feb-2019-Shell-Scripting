#!/bin/bash


if [[  $# -eq 0  ]]
then
   echo "Usage: $0  <service_name>"
fi


if [[ $# -eq 1   ]]
then
   service_name=$1
   echo $service_name
   echo "Starting your service"
   sudo systemctl start $service_name
   echo "started your service"
fi
