javastatus=$( dpkg --list | grep default-jdk )
if [ "$javastatus" = "" ]
then
sudo apt install -y default-jdk
fi

mavenstatus=$( dpkg --list | grep maven )
if [ "$mavenstatus" = "" ]
then
sudo apt install -y maven
fi

ssh ubuntu@54.244.209.186
tomcatstatus=$( dpkg --list | grep tomcat )
if [ "$tomcatstatus" = "" ]
then
sudo apt install -y tomcat8
fi
cp sachin.war /var/lib/tomcat8/webapps/
exit

