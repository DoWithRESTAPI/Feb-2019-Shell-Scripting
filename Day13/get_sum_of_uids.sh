#!/bin/bash
sum_uid=0
while read line
do
  uid_from_each_line=`echo $line|awk -F : '{print $3}'`
  sum_uid=$((sum_uid+uid_from_each_line))
done < /etc/passwd


echo $sum_uid
