# Bash Basics

Quick reference for core Bash concepts used in the solutions.

## Variables and Input

```bash
read variable        # read a single value from stdin
read -a array        # read words into an array
read -d '' -a array  # read until EOF into an array
```

## Arithmetic

```bash
echo "$((x + y))"           # integer arithmetic
echo "$x / $y" | bc -l      # floating-point arithmetic via bc
printf "%.3f" "$result"      # format to 3 decimal places
```

## Conditionals

```bash
if [[ "$a" -gt "$b" ]]; then
    echo "a is greater"
elif [[ "$a" -lt "$b" ]]; then
    echo "b is greater"
else
    echo "equal"
fi
```

### Common test operators

| Operator | Meaning              |
|----------|----------------------|
| `-eq`    | equal (integer)      |
| `-ne`    | not equal (integer)  |
| `-gt`    | greater than         |
| `-lt`    | less than            |
| `-ge`    | greater or equal     |
| `-le`    | less or equal        |
| `==`     | string equality      |
| `!=`     | string inequality    |

## Loops

```bash
# Brace expansion
for i in {1..50}; do
    echo "$i"
done

# Step value
for i in {1..99..2}; do
    echo "$i"
done

# C-style
for ((i = 0; i < n; i++)); do
    echo "$i"
done

# seq command
for i in $(seq 1 "$n"); do
    echo "$i"
done
```
