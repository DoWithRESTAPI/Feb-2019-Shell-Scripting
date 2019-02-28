#!/bin/bash
get_variables()
{
  clear
  D="\e[0m"
  R="\e[31m"
  G="\e[32m"
  Y="\e[33m"
  M="\e[35m"
  C="\e[36m"
  source ./git_insta.cfg
}
_INFO()
{
 C_D=`date '+%Y-%b-%d %T'`
 echo -e "${G}INFO   :    ${C_D}  $1$D"
}

_WARNING()
{
 C_D=`date '+%Y-%b-%d %T'`
 echo -e "${Y}WARNING:    ${C_D}  $1$D"
}
_ERROR()
{
 C_D=`date '+%Y-%b-%d %T'`
 echo -e "${R}WARNING:    ${C_D}$1$D"
}
_CRITICAL()
{
 C_D=`date '+%Y-%b-%d %T'`
 echo -e "${C}WARNING:${C_D}  $1$D"
}

welcome()
{
  echo -e "${M}**************************************************************************************************${D}"
  echo -e "${G}|\t\t\t     Welcome to Installation of Git\t\t\t                 |"
  echo -e "${M}**************************************************************************************************${D}"
}

chck_existing_git()
{
   e_g_v=$(git --version 2>/dev/null )
   egv_st=$?
   e_g_v=$(echo $e_g_v|awk '{print $NF}')
   if [[ ${egv_st} -eq 0 ]]
   then
       if [[ "${e_g_v}" = "${git_req_ve}" ]]
       then
          echo "Git is alreday installed and It is required git version (${git_req_ve})"
          exit 0
       elif [[ "${e_g_v}" > "${git_req_ve}" ]]
       then
          echo "Existing git version is: ${e_g_v} and Reruired git versio: ${git_req_ve}"
          echo "So we are downgrading the git"
       else
          echo "Existing git version is: ${e_g_v} and Reruired git versio: ${git_req_ve}"
          echo "So we are upgrating"
       fi
   else
       echo "Git is not installed and we have to install "
   fi
 

}

check_for_root_privilages()
{
  id_u=$(id -u)
  if [[ ${id_u} -ne 0 ]]
  then
      echo "Please run with root privilages"
      exit 1
  fi
}
check_req_libraries()
{
 #req_li=("Development Tools" gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel)
 line_cnt=1
 while read each
 do
    yum list installed | grep -w "${each}"
    if [[ $? -eq 1 ]]
    then
       if [[ $line_cnt -eq 1 ]]
       then
          yum groupinstall ${each} -y
          line_cnt=$((line_cnt+1))
          continue
       fi
       yum install ${each} -y 
    fi
 done < req_lib
}

install_required_git()
{
  echo "Implement this part"
}
thank_you()
{
  echo -e "${M}*****************************************************************************************************${D}"
  echo -e "${G}|                       Successfully Installed Git \t\t            |"
  echo -e "${M}*****************************************************************************************************${D}"
}




main()
{
   get_variables
   welcome
   chck_existing_git
   check_for_root_privilages
   check_req_libraries
   install_required_git
   thank_you

}



main


























