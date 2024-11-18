# You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively.

# Your task is to identify the performance grade for each student. If the average of the three scores is 80 or more, the grade is 'A'. If the average is 60 or above, but less than 80, the grade is 'B'. If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'.


# Input
# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76


# Output
# A 25 27 50 : FAIL
# B 35 37 75 : FAIL
# C 75 78 80 : B
# D 99 88 76 : A


# Solution
awk '{
    
    total=($2+$3+$4)/3
   
    if (total < 50) grade="FAIL"; 
    else if ( total >= 50 && total < 60) grade="C";
    else if ( total >= 60 && total < 80) grade="B";
    else grade="A"
    
    print $0" : "grade
}'
