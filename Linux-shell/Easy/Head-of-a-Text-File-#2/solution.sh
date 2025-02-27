# In this challenge, we practice using the head command to display the first n characters of a text file.
# Display the first 20 characters of an input file.

# Input
# New York is a state in the Northeastern and Mid-Atlantic regions of the United States. 
# New York is the 27th-most extensive, the third-most populous populated of the 50 United States.
# New York is bordered by New Jersey and Pennsylvania to the south.
# About one third of all the battles of the Revolutionary War took place in New York.
# Henry Hudson's 1609 voyage marked the beginning of European involvement with the area.

# Output
# New York is a state 


# Solution
head -c 20

# Solution
while read line
do
  echo $line
done | head -c 20
