#!/bin/bash

FILE="$1"

awk '{ 
    for (i = 1; i <= NF; i++) {
        word = tolower($i)
        gsub(/[^a-z0-9]/, "", word)
        if (word != "")
            print word
    }
}' "$FILE" | sort | uniq -c | sort -nr
