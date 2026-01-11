#!/bin/bash


FILE="$1"

sed -i \
    -e 's/error/ERROR/g' \
    -e 's/warning/WARNING/g' \
    -e 's/info/INFO/g' \
    "$FILE"
