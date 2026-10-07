#!/bin/bash

for filepath in files/*; do
    [ -e "$filepath" ] || continue

    filename=$(basename "$filepath")
    first_char=${filename:0:1}
    target=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

    mkdir -p "./$target"
    mv "$filepath" "./$target/"
done
