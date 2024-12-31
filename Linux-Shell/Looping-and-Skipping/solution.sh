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


# Scolution
seq 1 2 99


# Solution_01
for i in {1..99..2}; do
  echo "$i"
done


# Solution_02
for ((i=1; i<=99; i=i+2)); do
 echo "$i"
done


# Scolution_03
i=1
while [ $i -le 99 ]
do
    echo "$i"
    i=$((i+2))
done

# Note: -le = >=99

