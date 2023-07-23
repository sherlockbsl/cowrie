#!/bin/bash

network="192.168.1"

# Iterate over the IP addresses in the network range
for ((i=69; i<=69; i++))
do
  ip_address="$network.$i"

  # Check common ports to identify services
  for port in 22 80 443 8000
  do
    (echo >/dev/tcp/"$ip_address"/"$port") >/dev/null 2>&1 &&
      echo "IP address $ip_address: Port $port - Service is running"
  done
done
