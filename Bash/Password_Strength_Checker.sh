#!/bin/bash

password=""
read -p "Password: " password

if [ ${#password} -ge 8 ]  && [[ $password =~ [a-zA-Z] ]] && [[ $password =~ [0-9] ]];
then
	echo "Strong Password" 
elif [[ ${#password} -ge 6 && ${#password} -le 8 ]] && [[ $password =~ [a-zA-Z] ]];
then
	echo "Moderate Password" 
else 
	echo "Weak Password"
fi

