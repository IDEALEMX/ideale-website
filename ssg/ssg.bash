#!/bin/bash

buffer=$(cat $2)
while read -r line; do
    read -r first second _ <<< "$line"
    second="${second//\$HOME/$HOME}"
    # markdown command comes from the discount cli tool
    second=$(markdown $second)
    buffer="${buffer//"$first"/"$second"}"
done < "$1"

buffer="${buffer//"#style#"/"$3"}"

echo $buffer

