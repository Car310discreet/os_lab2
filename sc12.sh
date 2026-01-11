#!/bin/bash

HOST="8.8.8.8"



# Ping test
ping -c 3 "$HOST" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Network Status : Connected"
    echo "Ping Test      : Successful"
else
    echo "Network Status : Disconnected"
    echo "Ping Test      : Failed"
fi
