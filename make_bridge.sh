#!/bin/sh

#set -eu

echo "hello"

brctl addbr br0
echo "brctl addif"
brctl addif br0 eth0
echo "dhclient"
#dhclient br0
ifconfig br0 192.168.0.10 up
echo "ifnconfg eth0 up"
ifconfig eth0 0.0.0.0 up
#echo "restart ssh"
#sudo service sshd restart

echo "hello2"
