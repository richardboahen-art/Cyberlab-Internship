#!/bin/bash

##request for users age and classify them

read -p"Please enter your age: " num
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Invalid input:Please enter a positive number"
    exit 1
fi


if [[ $num -ge 0 && $num -lt 13 ]]; then
   echo "you are a child"
elif [[ $num -ge 13 && $num -lt 20 ]]; then
   echo "You are a teenager"
elif [[ $num -ge  20 && $num -lt 65 ]]; then
   echo "you are an adult"
else
   echo "You are a senior"
fi
