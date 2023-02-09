#!/bin/bash

read n
sum=0

for i in $(seq 1 $n); do
    read number
    sum=$((sum + number))
done

echo "scale=3;  $sum / $n" | bc
