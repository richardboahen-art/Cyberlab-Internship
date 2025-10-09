#!bin/bash
echo "***** Weekdays and their numbers *****"
echo ""

declare -A Weekdays=(
    [1]="Sunday"
    [2]="Monday"
    [3]="Tuesday"
    [4]="Wednesday"
    [5]="Thursday"
    [6]="Friday"
    [7]="Saturday"
)

##Request a number and check whether number is with in range

read -p "Enter a number from 1 to 7: " num
if [[ "$num" =~ ^[1-7]$ ]]; then
    echo "The day is: ${Weekdays[$num]}"
else
    echo "Invalid input (enter intger  between 1 and 7)"
fi
