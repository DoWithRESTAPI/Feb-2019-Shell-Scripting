#!/bin/bash
yum install httpd -y
systemctl start httpd
status=`systemctl status httpd | awk 'NR==3 { print $3 }'`
echo "The current status of httpd is : ${status}"

