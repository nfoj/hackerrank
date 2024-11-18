# Given a list of countries, each on a new line, your task is to read them into an array and then display the count of elements in that array.


# Input
# Namibia
# Nauru
# Nepal
# Netherlands
# NewZealand
# Nicaragua
# Niger
# Nigeria
# NorthKorea
# Norway


# Output
# 10


# Solution
mapfile -t array
echo ${#array[@]}
