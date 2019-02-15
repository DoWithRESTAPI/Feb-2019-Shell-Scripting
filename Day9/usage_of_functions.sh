#!/bin/bash

Default_c="\e[0m"
Red_c=" \e[31m"
Cyan_c="\e[36m"

function red_mes
{
   echo -e "${Red_c}$1${Default_c}"
}
if [[ $# -ne 1 ]]
then
   red_mes "Please pass your action for httpd"
   echo -e "${Cyan_c}Usage: $0 <start|stop|restart>${Default_c}"
   exit 1
fi


case $1 in
   "start" )  

             echo "Your action is start and we are working on that"
             sudo  systemctl start httpd
             if [[ $? -eq 0 ]]
             then
                  echo "Succesfully started httpd"
             else
                  red_mes "Unalbe to start httpd, Please check manullay"
             fi
             ;;
    "stop" ) 
             echo "Your action is stop and we are working ont that"
             sudo  systemctl stop httpd
             if [[ $? -eq 0 ]]
             then
                   echo "Succesfully stoped httpd"
             else
                   red_mes "Unable to stop httpd, Please check manully"
             fi
             ;;
    * )
             red_mes "Inavlid option"
             red_mes "Please pass your action as: start|stop|restart"
             ;;
esac
