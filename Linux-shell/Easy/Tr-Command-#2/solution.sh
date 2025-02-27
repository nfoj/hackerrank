# In this challenge, we practice using the tr command because it is a useful translation tool in Linux. 

# In a given fragment of text, delete all the lowercase characters.

# Input
# Hello
# World
# how are you

# Output
# H
# W


# Solution
tr -d "a-z"

# Solution
while read line
do
  echo "$line" | tr -d "a-z"
done
