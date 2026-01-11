#!/bin/bash

FILE="$1"

while IFS= read -r line; do
    echo "> $line"
done < "$FILE"

