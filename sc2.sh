#!/bin/bash

DIR="$1"

for file in "$DIR"/*; do
    [ -f "$file" ] || continue

    base=$(basename "$file")   
    name="${base%%_*}"         
    ext="${base##*.}"          

    mv "$file" "$DIR/$name.$ext"
done
