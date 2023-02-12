#!/bin/bash

# read and ignore n
read n

# read the array of integers
read -a array

# initialize a dictionary to store the count of each element
declare -A dict

# loop through the array
for element in "${array[@]}"; do
  # increment the count of the current element in the dictionary
  dict[$element]=$((${dict[$element]} + 1))
done

# loop through the dictionary
for key in "${!dict[@]}"; do
  # check if the count of the current key is 1
  if [[ "${dict[$key]}" == "1" ]]; then
    # if yes, print the key (which is the number that occurs only once)
    echo $key
    break
  fi
done
