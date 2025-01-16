# Bash Script Bug: Robust Input Handling in Summation

This repository demonstrates a common bug in shell scripting related to input validation.  The script `bug.sh` attempts to sum numbers from a file, but fails gracefully when encountering non-numeric input. The corrected script, `bugSolution.sh`, addresses this issue using robust error handling.

## Bug Description

The original script lacks input validation. If the input file `numbers.txt` contains non-numeric data, the arithmetic operation `sum=$((sum + number))` will fail, resulting in a script error.

## Solution

The improved script `bugSolution.sh` incorporates checks to ensure that each line read from the input file is a valid integer before performing the summation.  This prevents errors and produces more reliable results.

## How to reproduce

1.  Create the file numbers.txt with some number, for example:
```
10
20
30
40
50
```
2.  Run the buggy script `bug.sh` using `bash bug.sh`.
3.  Observe the result. Note down the output.
4.  Now modify the `numbers.txt` to include some text or special characters
```
10
20
abc
40
50
```
5. Run the buggy script again and compare the output.
6. Run the corrected script `bugSolution.sh` with the modified `numbers.txt` and compare the results. This should handle the non-numeric input gracefully.
