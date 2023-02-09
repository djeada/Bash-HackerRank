#!/bin/bash

read n
sum=0

for i in $(seq 1 $n); do
    read number
    sum=$((sum + number))
done

result=$(echo "$sum / $n" | bc -l)
printf %.3f "$result"
