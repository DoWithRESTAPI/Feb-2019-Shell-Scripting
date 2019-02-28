tom_url="http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.38/bin/apache-tomcat-8.5.38.tar.gz"
jen_url="http://mirrors.jenkins.io/war-stable/latest/jenkins.war"
req_java="java-1.8.0-openjdk"
insta_path="/home/ec2-user/installation"

cd ${insta_path}
echo "Downloding tomcat, Please wait...."
wget ${tom_url} 1 > /dev/null 2>&1
echo "Downloaded tomcat"

echo 'Extracting.....'
tar -xzf ${insta_path}/apache-tomcat-8.5.38.tar.gz

echo "removing tar.gz file"
rm -rf ${insta_path}/apache-tomcat-8.5.38.tar.gz

cd ${insta_path}/apache-tomcat-8.5.38/webapps

wget ${jen_url} 1 > /dev/null 2>&1

echo "Now starting apache tomcate "
${insta_path}/apache-tomcat-8.5.38/bin/startup.sh
