#!/bin/bash

read -p "Enter a score: " score

# Check if the input is a valid decimal or integer
if ! [[ "$score" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input: Enter a number between 0 and 100"
    exit 1
fi

# Use awk to evaluate the score and assign grades
grade=$(awk -v s="$score" '
BEGIN {
    if (s < 0 || s > 100) {
        print "Invalid: Numbers 0-100 only"
    } else if (s >= 90) {
        print "Grade A"
    } else if (s >= 80) {
        print "Grade B"
    } else if (s >= 70) {
        print "Grade C"
    } else if (s >= 60) {
        print "Grade D"
    } else {
        print "Grade F"
    }
}')

echo "$grade"

