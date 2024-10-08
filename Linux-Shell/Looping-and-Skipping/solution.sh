#!/usr/bin/env bash

# Your task is to use for loops to display only odd natural numbers from  to .

# Input Format
# There is no input.

# Output Format
# 1
# 2
# 3
# .
# .
# .
# 99  

# Solution
for i in {1..99..2}; do
  echo "$i"
done

# Solution
for ((i=1; i<=99; i=i+2)); do
 echo "$i"
done

# Solution
seq 1 2 99
