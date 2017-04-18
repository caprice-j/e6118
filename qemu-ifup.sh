#!/bin/sh
set -x

# This script is copied from http://www.linux-kvm.org/page/Networking
# This script should be placed as /etc/qemu-ifup
# (referred by QEMU by default when "-netdev tap" is specified)

switch=br0

if [ -n "$1" ];then
        #tunctl -u `whoami` -t $1
        ip tuntap add $1 mode tap user `whoami`
        ip link set $1 up
        sleep 0.5s
        #brctl addif $switch $1
        ip link set $1 master $switch
        exit 0
else
        echo "Error: no interface specified"
        exit 1
fi