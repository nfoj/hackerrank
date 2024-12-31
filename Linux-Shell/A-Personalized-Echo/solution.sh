#!/usr/bin/env bash


# Write a Bash script which accepts  as input and displays the greeting "Welcome (name)"

# Input Format
# There is one line of text, name.

# Output Format
# One line: "Welcome (name)" (quotation marks excluded).
# The evaluation will be case-sensitive.


# Solution
read name
echo "Welcome $name"


# Solution_01
echo "Welcome $(cat)"

# Note: for the command above, after typing it and hitting "Enter", you need to press "Ctrl + D" to show the result.
# Note: Ctrl + D = EOF (End of File)
