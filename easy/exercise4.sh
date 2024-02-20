#Loops: Write a script that:
#Iterates from 1 to 10 and prints each number.
#Iterates through a list of names (hardcoded or user-provided) and prints each name.
#Creates a file called "numbers.txt" and writes numbers from 1 to 20 inside it, one per line.

#! /bin/bash
for i in {1..10}
do
	echo "number : $i"
done

#no need for the comas between words
nameArr=("luca" "moris" "giada")
# @ it means iterate through all the array
for str in ${nameArr[@]}; do
	echo $str
done

userName=()
read  -p "choose the number of name that you want to insert: " num
#check if the variable is an integer : if [[ ${num} =~ ^[0-9]+$ ]]; then echo "Integer"; fi
for ((i=1; i<=$num; i++)) ;do
	echo "choose the name number $i: "
	read name
	userName+=($name)
done

echo "this is the list of names that you provide: "
for str in ${userName[@]}
do
	echo $str
done

touch number.txt
for i in {1..20}; do
	echo $i >> number.txt
done
