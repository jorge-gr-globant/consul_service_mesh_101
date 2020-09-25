#!/bin/sh
CONSUL_IP=$(host consul_server | grep -o '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*')
echo "nameserver $CONSUL_IP" >> /etc/resolv.conf
counting-service
#consul connect envoy -sidecar-for 127.0.0.1:counting_service:9002
