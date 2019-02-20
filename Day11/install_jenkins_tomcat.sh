#!/bin/bash

function welcome
{
  clear
  echo "|**********************************************|"
  echo "|This will install Jenkins on the top of tomcat|"
  echo "************************************************"
}

function get_req_variables
{
 . ./config.txt

}

function check_installation_path
{
  if [ -e "${Install_Path}" ]
  then
    echo "Your Tomcat Installation Location is: ${Install_Path}"
  else
    mkdir -p ${Install_Path}
    echo "We are creating new installation Location and That is ${Install_Path}"
  fi
  
}

function get_tomcat
{
 cd ${Install_Path}
 echo "Downloding Tomcat......."
 wget -q ${Tomcat_Url}
 echo "Downloaded Tomcat"
 Tomcat_tar_gz_file=$(echo $Tomcat_Url | awk -F / '{print $NF }')
 echo "Extracting ${Tomcat_tar_gz_file} file....."
 tar -xzf  ${Install_Path}/${Tomcat_tar_gz_file}
 echo "Extracted ${Tomcat_tar_gz_file}"
 echo "Now removing ${Tomcat_tar_gz_file} file"
 rm -rf ${Install_Path}/${Tomcat_tar_gz_file}
 echo "Now deleted ${Tomcat_tar_gz_file}"
 Tomcat_Home=$(echo ${Tomcat_tar_gz_file} | awk -F .tar.gz '{print $1}')
 Tomcat_Home=${Install_Path}/${Tomcat_Home}
 echo "Tomcat_Home=${Tomcat_Home}"
}

function get_jenkins
{

  cd ${Tomcat_Home}/webapps
  echo "Downloading jenkins into ${Tomcat_Home}/webapps"
  wget -q ${Jenkins_Url}
  echo "Donwloded Jnekins"
}

function start_jenkins
{

  sudo netstat -anp | grep 8080
  if [ $? -ne 0 ]
  then
    ${Tomcat_Home}/bin/startup.sh
  else
     echo "replace 8080 port in server.xml with 9090"
  fi
}
 
function check_for_java
{
  java -version 2>java_ver_info
  java_version=$(cat java_ver_info |awk 'NR==1 { print $NF}' |cut -c 2-4)
  if [ "${java_version}" > "1.7" ]
  then
    echo "Host is deployed with required java and it is ${java_version}"
  else
    echo "Host is not having required java, now installing ${Java_ver}"
    sudo yum install open-jdk-${Java_ver}
  fi

}
function main
{

  welcome
  get_req_variables
  check_installation_path
  get_tomcat
  get_jenkins
  check_for_java
  start_jenkins

}


main
