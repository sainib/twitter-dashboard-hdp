#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#echo $DIR

echo ""
echo "$(tput setaf 2)######################################### $(tput sgr 0)"
echo "$(tput setaf 2)###### Step 2 - Install Maven $(tput sgr 0)"
echo "$(tput setaf 2)######################################### $(tput sgr 0)"
echo ""

mkdir /opt/maven
cd /opt/maven

echo ""
echo "$(tput setaf 2)##### Downloading Maven $(tput sgr 0)"
echo ""
wget -nv http://www.interior-dsgn.com/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz

echo ""
echo "$(tput setaf 2)##### Installing Maven $(tput sgr 0)"
echo ""

tar xzf apache-maven-3.2.3-bin.tar.gz
rm -rf apache-maven-3.2.3-bin.tar.gz
ln -s /opt/maven/apache-maven-3.2.3 /opt/maven/latest
echo 'M2_HOME=/opt/maven/latest' >> ~/.bashrc
echo 'M2=$M2_HOME/bin' >> ~/.bashrc
echo 'PATH=$PATH:$M2' >> ~/.bashrc

echo ""
echo "$(tput setaf 2)##### Finished installing Maven $(tput sgr 0)"
echo ""