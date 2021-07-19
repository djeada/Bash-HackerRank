read var

result=$(echo "$var" | bc -l)

printf "%.3f" "$result"
