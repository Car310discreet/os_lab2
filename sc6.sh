#!/bin/bash

FILE="$1"

awk '!seen[$0]++' "$FILE"
