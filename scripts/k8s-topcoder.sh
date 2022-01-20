#!/bin/sh
sudo dnf -y upgrade
sudo setenforce 0
sudo sed - i--follow - symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux