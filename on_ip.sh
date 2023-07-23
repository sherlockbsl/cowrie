#!/bin/bash

network="192.168.1"

# Iterate over the IP addresses in the network range
for ((i=1; i<=254; i++))
do
  ip_address="$network.$i"

  # Ping the IP address to check if it is ON (reachable)
  if ping -c 1 -W 1 "$ip_address" > /dev/null 2>&1; then
    echo "IP address $ip_address is ON"
  fi
done






