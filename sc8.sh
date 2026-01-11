#!/bin/bash

LOGFILE="$1"
CSVFILE="$2"

awk '
BEGIN {
    print "Date,INFO,WARNING,ERROR"
}
{
    date = $1
    level = $2
    count[date, level]++
    dates[date]
}
END {
    for (d in dates) {
        info = count[d, "INFO"] + 0
        warn = count[d, "WARNING"] + 0
        err  = count[d, "ERROR"] + 0
        print d "," info "," warn "," err
    }
}
' "$LOGFILE" > "$CSVFILE"
