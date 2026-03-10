# Bash Arrays

Quick reference for array operations used in the solutions.

## Reading arrays

```bash
read -a array          # read words from a single line into an array
read -d '' -a array    # read until EOF into an array (multiple lines)
```

## Accessing elements

```bash
echo "${array[0]}"          # first element (0-indexed)
echo "${array[3]}"          # fourth element
echo "${array[@]}"          # all elements
echo "${#array[@]}"         # number of elements
```

## Slicing

```bash
echo "${array[@]:3:5}"      # 5 elements starting at index 3
```

## Concatenation

```bash
combined=("${a[@]}" "${b[@]}")                     # merge two arrays
echo "${array[@]} ${array[@]} ${array[@]}"         # repeat array 3 times
```

## Pattern substitution

```bash
echo "${array[@]/*[aA]*/}"      # remove elements matching pattern
echo "${array[@]/[A-Z]/.}"      # replace first uppercase letter with dot
```

## Associative arrays

```bash
declare -A dict                           # declare associative array
dict["key"]=value                         # set a value
echo "${dict["key"]}"                     # get a value
echo "${!dict[@]}"                        # all keys

# Count occurrences
for element in "${array[@]}"; do
    dict[$element]=$((${dict[$element]} + 1))
done
```
