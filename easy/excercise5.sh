#! /bin/bash
#display a message with all the mounted devices, and let the user to choose one 
echo "choose a file system:"

#we will check for all sd devices and print just the name with awk, then remove eventually then remove eventually blank spaces and
#display the result in a column way
df -h /dev/sd* | awk '{print $1,$6}' | tr -s " " " " |column -t
read -p "I want more info on this mounted device: -->  " partition

if [[ ! -e "$partition" ]]; then
	echo "device doesn't exist"
	exit 1
fi

# Get available space directly
available_space=$(df -h | grep "$partition" | awk '{print $4}')

# Print the free space
echo "Available space on $partition: $available_space"

# Alternatively, convert to bytes:
available_bytes=$(df -h | grep "$partition" | awk '{print $4 * 1024^3}')
echo "Available space on $partition in bytes: $available_bytes"


#Uses the ps command to list running processes and count the number of processes owned by a specific user.
user=$(whoami)

echo $user

process_count=$(ps aux | awk "/$user/ {print}") | wc -l

echo "There are $process_count processes owned by $user."
