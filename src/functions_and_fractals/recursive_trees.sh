#!/bin/bash

read -r N

declare -A grid
ROWS=63
COLS=100

for ((r=0; r<ROWS; r++)); do
    for ((c=0; c<COLS; c++)); do
        grid[$r,$c]="_"
    done
done

treeify() {
    local count=$1
    local row=$2
    local col=$3
    local iter=$4
    local i

    # draw trunk
    for ((i=0; i<count; i++)); do
        grid[$row,$col]="1"
        ((row--))
    done

    # draw branches
    for ((i=0; i<count; i++)); do
        grid[$row,$((col-i-1))]="1"
        grid[$row,$((col+i+1))]="1"
        ((row--))
    done

    # recurse for next iteration
    if ((iter > 1)); then
        treeify $((count/2)) "$row" $((col-count)) $((iter-1))
        treeify $((count/2)) "$row" $((col+count)) $((iter-1))
    fi
}

print_grid() {
    local line
    for ((r=0; r<ROWS; r++)); do
        line=""
        for ((c=0; c<COLS; c++)); do
            line+="${grid[$r,$c]}"
        done
        printf '%s\n' "$line"
    done
}

treeify 16 62 49 "$N"
print_grid
