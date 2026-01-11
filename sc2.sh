#!/bin/bash

DIR="$1"

TIME=$(date "+%H%M%S")
for file in "$DIR"/*; do
    [ -f "$file" ] || continue

    base=$(basename "$file")   
    name="${base%%_*}"         
    ext="${base##*.}"          

    mv "$file" "$DIR/$name_$TIME.$ext"
done
