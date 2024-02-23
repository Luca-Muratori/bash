#! /bin/bash

read -p "how many words do you want to write: " num
arguments=()
for ((i=1; i<=num; i++)); do
	read -p "your argument number $i is :" arg
	arguments+=("$arg")
done

echo "the final phrase is: ${arguments[@]}"


#search for a specific folder and search for all files with a specific extension

read -p "insert the type of file that you want to search: " extension

read -p "insert the path of the folder: " path

cd $path

echo $(ls | grep $extension)

#create a math function
read -p "Please provide the first number: " numA

read -p "Please provide the second number: " numB

read -p "Provide the type of operation you want (+, -, *, /): " operation

function result() {
  # Use positional parameters for clarity
  local num1="$1"
  local num2="$2"
  local operator="$3"

  # Handle division by zero safely
  if [[ "$operator" == "/" && "$num2" -eq 0 ]]; then
    echo "Error: Division by zero is not allowed."
    return 1  # Indicate error
  fi

  # Perform calculation based on operator (using case instead of if)
  case "$operator" in
    "+")
      result=$((num1 + num2))
      ;;
    "-")
      result=$((num1 - num2))
      ;;
    "*")
      result=$((num1 * num2))
      ;;
    "/")
      result=$((num1 / num2))
      ;;
    *)
      echo "Error: Invalid operator. Please use +, -, *, or /."
      return 1  # Indicate error
      ;;
  esac

  echo "$num1 $operator $num2 = $result"
}

result "$numA" "$numB" "$operation"
