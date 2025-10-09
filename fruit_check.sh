#!/bin/bash

## Request for fruit
echo "====== Type your favourite fruit and get a response ======="
echo ""
read -p "Fruit Name: " fruit_name

# Convert to lowercase 
fruit_name="${fruit_name,,}"

# Check for empty input
if [[ -z "$fruit_name" ]]; then
    echo "You didn't enter anything."
elif [[ "$fruit_name" == "apple" ]]; then
    echo "You chose an apple."
elif [[ "$fruit_name" == "banana" ]]; then
    echo "Bananas are great!"
else
    echo "That's a nice choice!"
fi




