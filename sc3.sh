#!/bin/bash

# Set threshold percentage
THRESHOLD=80

# Filesystem to monitor (root filesystem)
FILESYSTEM="/"

# Get disk usage percentage (remove % sign)
USAGE=$(df -h "$FILESYSTEM" | awk 'NR==2 {gsub("%",""); print $5}')

# Check usage
if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage on $FILESYSTEM is at ${USAGE}% (Threshold: ${THRESHOLD}%)"
else
    echo "Disk usage on $FILESYSTEM is normal: ${USAGE}%"
fi
