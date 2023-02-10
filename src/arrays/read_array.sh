#!/bin/bash

countries=()
while read -r country; do
    countries+=("$country")
done

echo -n "${countries[@]}" 
