#!/bin/bash

HOSTNAME=$(hostname)
IP_ADDRESS=$(hostname -I | awk '{print $1}')

echo "Hostname   : $HOSTNAME"
echo "IP Address : $IP_ADDRESS"
