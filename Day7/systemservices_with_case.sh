#!/bin/bash
function systemctl_with_action
{
   User_gid=`id -u ${USER}`
   sudo_pri=`sudo -l`
   sudo_status=`echo $?`
  
   if [[ ${User_gid} -eq 0 ]]
   then
      systemctl ${action}  ${service_name}
   elif [[ ${sudo_status} -eq 0 ]]
      sudo systemctl ${action}  ${service_name}
   else
      echo "YOu are not the root user"
      exit 2
   fi
}


if [[ $# -ne 2 ]]
then
  echo "Usage: $0 <System_Service_Name> <start|stop|restart|status|remove|install>"
  exit 2
fi

service_name=$1
action=$2
curr_status=`systemctl status httpd | grep Active | awk '{ print $2 }'`

case ${action} in
   "start" )  echo "Your actions is start"
              if [[ ${curr_status} != "active" ]]
              then 
                   systemctl_with_action
              fi
              ;;

   "stop" )   echo "Your action is stop"
              if [[ ${curr_status} = "active" ]]
              then
                   systemctl_with_action
              fi
              ;;

    "status") echo "Your action is status"
              echo "The current status of ${service_name} is ${curr_status}"
              ;;

    "*")      echo "Invalid option"
              echo "Valid options are: start|stop|restart|status|remove|install"
	      ;;
esac
