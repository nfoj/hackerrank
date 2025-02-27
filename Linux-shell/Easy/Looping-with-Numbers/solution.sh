#!/usr/bin/env bash

#Use a for loop to display the natural numbers from 1 to 50.

#Input Format
#There is no input

#Output Format
# 1
# 2
# 3
# .
# .
# .
# 50

# Solution
for ((i=1; i<=50; i++)); do
  echo "$i"
done


# Solution
for i in {1..50}; do 
  echo "$i"
done


# Solution
seq 1 50
