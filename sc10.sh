#!/bin/bash

while true; do
    echo "=============================="
    echo "        MAIN MENU"
    echo "=============================="
    echo "1. Show Date and Time"
    echo "2. Show Hostname"
    echo "3. Show IP Address"
    echo "4. List Files in Current Directory"
    echo "5. Exit"
    echo "=============================="
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1)
            echo "Date and Time: $(date)"
            ;;
        2)
            echo "Hostname: $(hostname)"
            ;;
        3)
            echo "IP Address: $(hostname -I | awk '{print $1}')"
            ;;
        4)
            echo "Files in current directory:"
            ls
            ;;
        5)
            echo "Exiting program..."
            exit 0
            ;;
        *)
            echo "Invalid choice! Please try again."
            ;;
    esac

    echo
done
