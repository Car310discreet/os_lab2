#!/bin/bash

FILE="$1"

MAILS=$(grep -oE "[a-zA-Z0-9._%+-]+@gmail\.com" "$FILE")
PHONE=$(grep -oE '\b[0-9]{10}\b' "$FILE")

echo "Contacts:"
for p in $PHONE
    do echo $p
done
echo "Emails:"
for e in $MAILS
    do echo $e
done