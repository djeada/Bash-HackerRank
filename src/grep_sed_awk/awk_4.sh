#!/bin/bash
awk '{
    if (NR % 2 == 1)
        line = $0
    else
        print line ";" $0
}'
