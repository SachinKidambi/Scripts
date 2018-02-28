url=https://github.com/SachinKidambi/JavaApp.git
git clone $url
cd ./Java_sample_app/SpringMVCSecurityXML
mvn clean install
cd ./target
mv SpringMVCSecurityXML.war sachin.war
scp sachin.war ubuntu@54.244.209.186:./
cd
ssh ubuntu@54.244.209.186 < deploy.sh
firefox http://54.244.209.186:8080/sachin
