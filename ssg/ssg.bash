#!/bin/bash

buffer=$(cat $2)
while read -r line; do
    read -r first second _ <<< "$line"
    second="$(markdown "$second")"
    buffer="${buffer//"$first"/"$second"}"
done < "$1"
echo $buffer

