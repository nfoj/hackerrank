# Given a list of countries, each on a new line, your task is to read them into an array and then display the element indexed at 3. Note that indexing starts from 0.


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
# Netherlands


# Solution
mapfile -t array
echo "${array[3]}"
