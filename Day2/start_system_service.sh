#!/bin/bash -x


read -p "Enter you system service name: " service_name
#service_name="httpd"
echo $service_name
echo "Starting your service"
sudo systemctl start $service_name
echo "started your service"
