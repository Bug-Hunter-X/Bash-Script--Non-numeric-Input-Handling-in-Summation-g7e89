#!/bin/bash

# This script processes a file containing numbers,
# calculates their sum, and handles non-numeric input gracefully.

input_file="numbers.txt"
sum=0

if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

while read -r number;
do
  # Validate that the input is an integer
  if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Skipping non-numeric input: '$number'" >&2
    continue
  fi
  sum=$((sum + number))
done < "$input_file"

echo "Sum: $sum"