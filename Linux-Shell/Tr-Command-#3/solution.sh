# In a given fragment of text, replace all sequences of multiple spaces with just one space.

# Input
# He  llo
# Wor  ld
# how  are  you

# Output
# He llo
# Wor ld
# how are you


# Solution
tr -s ' '

# Solution
tr -s [:space:]

# Solution
while read line
do 
  echo "$line" | tr -s ' '
done

