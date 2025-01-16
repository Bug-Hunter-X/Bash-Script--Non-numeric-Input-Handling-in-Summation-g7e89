#!/bin/bash

# This script attempts to process a file containing numbers,
# calculates their sum, and prints the result.

# Input file containing numbers (one number per line)
input_file="numbers.txt"

# Initialize the sum
sum=0

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

# Read numbers from the file and calculate the sum
while read -r number;
do
  # This line is problematic because it doesn't handle non-numeric input
  sum=$((sum + number))
done < "$input_file"

# Print the sum
echo "Sum: $sum"