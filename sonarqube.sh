#!/bin/bash
# Script to install sonarqube on centOS7

sudo - vagrant

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

cd /opt

sudo yum install wget -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo yum install unzip -y

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64

# sudo firewall-cmd --permanent --add-port=9000/tcp

# sudo firewall-cmd --reload

./sonar.sh stop
sudo sleep 5

./sonar.sh start
sudo sleep 5

sudo yum install net-tools -y

clear
sudo sleep 3

echo "Please NOTE Your IP Address from below................................"
sudo sleep 3

ifconfig|grep broadcast|awk '{print$2}'
sudo sleep 5

echo "Open a Browser and Enter < your IP Address:9000 >"
sudo sleep 5

echo "Login Credentials: Username=admin  Password=admin"
sudo sleep 5

echo "press ctrl+c to return your prompt"
sudo sleep 3000

# sudo chromium-browser --incognito --kiosk http://:9000
