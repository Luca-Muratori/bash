#!/bin/bash
# String Manipulation: Write a script that:

# Prompts the user for their name.

# Converts the name to uppercase and store it in a variable.

# Prints a greeting message using the stored name.

# Counts the number of characters in the name and displays it.
# Extracts the first letter of the name and displays it.

# Ask the user for their name
echo "What is your name?"
read name
# Convert the name to uppercase
uppercase_name=$(echo "$name" | tr '[a-z]' '[A-Z]')
# Print a greeting using the uppercase name
echo "Hello, $uppercase_name!"
len=${#name}
echo "your name have $len characters"
#we will return the first character by using :0:1 (it will return the character at position 0 and it will create a substring until reaching position 1 excluded)
echo "your fist character is " ${uppercase_name:0:1}
