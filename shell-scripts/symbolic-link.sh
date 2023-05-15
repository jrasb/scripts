#!/bin/sh

# Script for linking files to the /usr/bin/ with the file name and .sh chopped off
# Usage: sudo ./symbolic-link.sh file1 file2 file3 ... file$ 

for file in "$@"
do

if ! [ -f "$file" ]; then
    printf "INVALID FILE %s\n" "$file"
    return 1
else
    printf "VALID FILE %s\n" "$file"
    ln "$file" "usr/bin/${file%%.*}"
fi

done

return 0