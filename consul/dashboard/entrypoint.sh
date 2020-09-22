#!/bin/sh
CONSUL_IP=$(host consul_server | grep -o '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*')
printf "options ndots:0\nnameserver $CONSUL_IP\nnameserver 127.0.0.11" > /etc/resolv.conf
#consul connect envoy -sidecar-for 127.0.0.1:dashboard-service:9002 &
dashboard-service
