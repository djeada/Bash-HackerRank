#!/bin/bash
awk '{
    if (NR % 2 == 1)
        line=$0
    else {
        print line ";" $0 
        line=""
    }
}
END {
    if (line!="") {
        print line ";"
    }
}
' 
