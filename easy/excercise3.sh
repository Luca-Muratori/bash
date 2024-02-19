#!/bin/bash
#Conditional Statements: Write a script that:
#Prompts the user for a number.
#Checks if the number is even or odd and displays an appropriate message.
#Checks if the number is greater than 10, less than 10, or equal to 10 and displays different messages acco
echo "choose a number: "
read number
if [ $((number % 2)) -eq 0 ]; then
	echo "the number $number is even"
else
	echo "the number $number is odd"
fi

if [ $number -gt 10 ]; then
	echo "number $number is greater then 10"
elif [ $number -eq 10 ]; then
	echo "number is 10"
elif [ $number -lt 10 ]; then
	echo "number $number is less than 10"
fi
