#!/bin/bash

INTERFACE=$(ip route | awk '/default/ {print $5}')
INTERVAL=1   # seconds

echo "Monitoring bandwidth on interface: $INTERFACE"
echo "Press Ctrl+C to stop"
echo

RX_PREV=$(cat /proc/net/dev | grep "$INTERFACE" | awk '{print $2}')
TX_PREV=$(cat /proc/net/dev | grep "$INTERFACE" | awk '{print $10}')

while true; do
    sleep $INTERVAL

    RX_CUR=$(cat /proc/net/dev | grep "$INTERFACE" | awk '{print $2}')
    TX_CUR=$(cat /proc/net/dev | grep "$INTERFACE" | awk '{print $10}')

    RX_RATE=$(( (RX_CUR - RX_PREV) / INTERVAL ))
    TX_RATE=$(( (TX_CUR - TX_PREV) / INTERVAL ))

    echo "Download: $((RX_RATE / 1024)) KB/s | Upload: $((TX_RATE / 1024)) KB/s"

    RX_PREV=$RX_CUR
    TX_PREV=$TX_CUR
done
