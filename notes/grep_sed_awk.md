# Grep, Sed, and Awk

Quick reference for grep, sed, and awk usage in the solutions.

## grep

Search for patterns in text.

```bash
grep -w "the"                          # match whole word "the"
grep -w -i "the"                       # case-insensitive whole word
grep -w -i -v "that"                   # invert match (exclude lines)
grep -w -i -e "the" -e "that"         # match multiple patterns
grep -E 'pattern'                      # extended regex
```

### Useful flags

| Flag | Meaning                        |
|------|--------------------------------|
| `-w` | match whole words only         |
| `-i` | case-insensitive               |
| `-v` | invert match (exclude)         |
| `-c` | count matching lines           |
| `-n` | show line numbers              |
| `-e` | specify multiple patterns      |
| `-E` | extended regular expressions   |

## sed

Stream editor for find and replace.

```bash
sed 's/the/this/'               # replace first "the" per line
sed 's/the/this/g'              # replace all occurrences
sed 's/thy/your/gI'             # case-insensitive global replace
sed 's/\b\(thy\)\b/{\1}/gI'    # wrap matches with braces
sed 's/[0-9]\+ /**** /g'       # replace numbers with ****
sed -r 's/(.+) (.+)/\2 \1/'    # swap fields using capture groups
```

### Key modifiers

| Modifier | Meaning                      |
|----------|------------------------------|
| `g`      | global (all occurrences)     |
| `I`      | case-insensitive             |
| `-r`     | extended regex               |

## awk

Pattern scanning and processing.

```bash
# Print conditionally
awk '{if ($4 == "") print "Not all scores are available for", $1}'

# Ternary expressions
awk '{print $1 " : " ($2>=50 && $3>=50 && $4>=50 ? "Pass" : "Fail")}'

# Compute and grade
awk '{s=$2+$3+$4; print $0 " : " (s>=240?"A":s>=180?"B":s>=150?"C":"FAIL")}'

# Change output record separator
awk '{ORS = NR%2 ? ";" : "\n"}1'
```
