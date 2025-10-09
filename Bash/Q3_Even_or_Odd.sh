#!/bin/bash

#Request a number Check if the number entered is a valid integer. 
read -p "Enter an integer: " num
 
if [[ "$num" =~ ^-?[0-9]+$ ]]; then
    #Check if number is divisible by two
    if (( num % 2 == 0 )); then
        echo "Even"
    else
        echo "Odd"
    fi
else
    echo "Invalid input:number not an integer"
fi
