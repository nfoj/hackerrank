# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.

# In a given fragment of text, replace all parentheses with box brackets.

# Innput
# int i=(int)5.8
# (23 + 5)*2

# Output
# int i=[int]5.8
# [23 + 5]*2


# Solution
tr "(" "[" | tr ")" "]"

# Solution
tr '()' '[]'

# Solution
while read line
do
    echo $line | tr "()" "[]";
done
echo $line | tr "()" "[]"; 
