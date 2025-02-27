# Given a list of countries, each on a new line, your task is to read them into an array and then display the entire array, with a space between each of the countries' names. 


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
# Namibia Nauru Nepal Netherlands NewZealand Nicaragua Niger Nigeria NorthKorea Norway


# Solution
mapfile -t array
echo "${array[@]}"


# Solution
while read c ; do echo -n "$c "; done
