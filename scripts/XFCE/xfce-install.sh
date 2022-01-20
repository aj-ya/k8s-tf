#!/bin/bash
#ref->https://www.rootusers.com/how-to-install-xfce-gui-in-centos-7-linux/
echo "sh4n1"
sudo yum -y update
sudo yum install epel-release -y
sudo yum groupinstall "Server with GUI" -y
sudo yum groupinstall "Xfce" -y
sudo systemctl set-default graphical.target
reboot