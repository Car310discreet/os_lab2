#!/bin/bash

# Function definitions
add() {
    echo "Result: $(( $1 + $2 ))"
}

subtract() {
    echo "Result: $(( $1 - $2 ))"
}

multiply() {
    echo "Result: $(( $1 * $2 ))"
}

divide() {
    if [ "$2" -eq 0 ]; then
        echo "Error: Division by zero not allowed"
    else
        echo "Result: $(( $1 / $2 ))"
    fi
}

# User input
echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo
echo "Choose operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

# Decision based on user choice
case $choice in
    1) add $a $b ;;
    2) subtract $a $b ;;
    3) multiply $a $b ;;
    4) divide $a $b ;;
    *) echo "Invalid choice" ;;
esac
