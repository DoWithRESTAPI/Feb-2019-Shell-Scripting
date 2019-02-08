#!/bin/bash
ser_name=$1
echo "The passed service name is: ${ser_name}"
systemctl list-unit-files --type=service|grep ${ser_name} > /dev/null
syst_status=$?
echo "The status of checking service is: ${syst_status}"
if [[ ${syst_status} -eq 0 ]]
then
  echo "The service is available with host."
else
  echo "The service is not available with host "
  echo "we are terminating the script"
  exit 2
fi




<< mycomm
if [[ ${syst_status} -ne 0 ]]
then
  echo "The service is not available with host "
  echo "we are terminating the script"
  exit 2
fi

mycomm
echo "This is final line"
