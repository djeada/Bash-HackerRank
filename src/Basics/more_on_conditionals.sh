#!/bin/bash

read x
read y
read z

if [[ "$x" -eq "$y" && "$y" -eq "$z" ]]; then 
    echo "EQUILATERAL"
elif [[ "$x" -eq "$y" || "$x" -eq "$z" || "$z" -eq "$y" ]]; then
   echo "ISOSCELES" 
else
    echo "SCALENE"
fi
