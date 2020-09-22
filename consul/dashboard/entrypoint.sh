#!/bin/sh
consul connect envoy -sidecar-for 127.0.0.1:dashboard-service:9002 &
dashboard-service
