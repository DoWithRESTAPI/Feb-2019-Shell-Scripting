#!/bin/bash
#rm -rf server_info.csv
echo "ServerName,UpTime" > server_info.csv
cnt=1
for each_ser in $(cat list_of_servers.txt)
do
 echo "$cnt.Working on ${each_ser}"
 upteime=$(sshpass -p ansible@123 ssh -o StrictHostKeyChecking=no ec2-user@${each_ser}  "uptime" | awk '{print $3,$4}'| tr ',' ' ')
 echo "${each_ser},${upteime}" >> server_info.csv
 cnt=$(( cnt + 1 ))
done
