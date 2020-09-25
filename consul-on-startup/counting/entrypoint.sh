#!/bin/sh
CONSUL_IP=$(host consul_server | grep -o '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*')
printf "options ndots:0\nnameserver $CONSUL_IP\nnameserver 127.0.0.11" > /etc/resolv.conf
IP_ADDR=$(hostname -i | awk '{print $1}')
sed -i "s/IP_ADDR/$IP_ADDR/g" /usr/local/etc/service.hcl
consul services register /usr/local/etc/service.hcl
counting-service
