#!/bin/bash

read input

if [[ "$input" == "y" || "$input" == "Y" ]]; then
    echo "YES"
fi

if [[ "$input" == "n" || "$input" == "N" ]]; then
    echo "NO"
fi
