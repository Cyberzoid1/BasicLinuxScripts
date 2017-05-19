#!/bin/bash

echo Starting Update
echo ""
sudo apt-get update
echo -----upgrade
sudo apt-get -y upgrade

echo -----java install #http://askubuntu.com/questions/464755/how-to-install-openjdk-8-on-14-04-lts
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
java -version

echo -----installs
sudo apt-get install -y inxi htop screen git build-essential
sudo apt-get install -y openssh-server openssh-client
echo ------update/upgrade/autoremove
sudo apt-get -y update
sudo apt-get upgrade
sudo apt-get autoremove

echo "Updating path"
export PATH=$PATH:$HOME/bin

#Create sybolic link to bin
ln -s $HOME/bin/BasicLinuxScripts/update $HOME/bin/update

echo "Recommend to reboot"

