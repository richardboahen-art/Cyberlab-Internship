#! bin?bash

##Read input

echo "This script ask for a first and second number and compares them"
echo ""
read -p"Please enter your first number: " num1
read -p"Please enter your second number: " num2

if [[ $num1 -eq $num2 ]]; then
    echo "The numbers are equal."
elif [[ $num1 -gt $num2 ]]; then
    echo "The first number is greater than the second."
else
    echo "The second number is greater than the first."
fi

echo ""

