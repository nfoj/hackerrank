# You are given a list of countries, each on a new line. Your task is to read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'. 


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
# Niger


# Solution
mapfile -t my_arr
echo ${my_arr[@]/*[Aa]*/}
