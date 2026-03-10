# Text Processing

Quick reference for text processing commands used in the solutions.

## cut

Extract sections from each line of input.

```bash
cut -c3              # 3rd character
cut -c2,7            # 2nd and 7th characters
cut -c2-7            # characters 2 through 7
cut -c-4             # first 4 characters
cut -c13-            # character 13 to end of line
cut -d' ' -f4        # 4th space-delimited field
cut -f-3             # first 3 tab-delimited fields
cut -f2-             # 2nd field to last (tab-delimited)
```

## head / tail

```bash
head -20             # first 20 lines
head -c20            # first 20 characters
tail -20             # last 20 lines
tail -c20            # last 20 characters
```

## tr

Translate or delete characters.

```bash
tr '()' '[]'         # replace parentheses with brackets
tr -d '[a-z]'        # delete all lowercase letters
tr -s ' '            # squeeze repeated spaces into one
```

## sort

```bash
sort                 # alphabetical sort
sort -r              # reverse sort
sort -n              # numeric sort
sort -n -r           # reverse numeric sort
sort -t$'\t' -k2     # sort by 2nd tab-delimited field
sort -t'|' -nr -k2   # reverse numeric sort by 2nd pipe-delimited field
```

## uniq

Works on **sorted** input (consecutive duplicates).

```bash
uniq                 # remove consecutive duplicate lines
uniq -c              # prefix lines by count of occurrences
uniq -ic             # case-insensitive count
uniq -u              # print only unique lines (no duplicates)
```

## paste

Merge lines from input.

```bash
paste -s             # join all lines into one (tab-separated)
paste -d ';' -s      # join all lines with semicolons
paste -d ';' - - -   # merge every 3 lines with semicolons
paste -d '\t' - - -  # merge every 3 lines with tabs
```
