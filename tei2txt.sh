#!/bin/bash
# Convert a directory TEI files to txt
# Usage: ./tei2txt.sh <dir with input-files> <dir to save output-files in>
# 2022-08-27 jannekevdzwaan@gmail.com

echo ''
echo 'Running tei2txt'
echo 'for all files in:' $1
echo 'saving output files in:' $2
echo ''

# Create output directory if it doesn't exist
[[ -d "$2" ]] || mkdir -p "$2"

total=0

shopt -s nullglob
for in_file in $(find $1 -maxdepth 1 -type f); do
    total=$((total+1))

    basename=$(BASENAME  "$in_file" .xml)
    echo "(${total}) In: ${in_file}, out: $2/${basename}.txt"
    

    xmllint --xpath "string(//*[local-name()='body'])" $in_file > $2/${basename}.txt
done