# You are given a file with four space separated columns containing the scores of students in three subjects. The first column contains a single character (A-Z), the student identifier. The next three columns have three numbers each. The numbers are between 0 and 100, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.

# Your task is to identify those lines that do not contain all three scores for students. 


# Input
# A 25 27 50
# B 35 75
# C 75 78 
# D 99 88 76


# Output
# Not all scores are available for B
# Not all scores are available for C


# Solution
awk '!$4 {print "Not all scores are available for",$1}'
