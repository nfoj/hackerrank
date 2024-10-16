# Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).

# Input
# Hello
# World
# how are you

# Output
# ello
# orld
# ow are


# Solution
cut -c 2-7


# Solution
while read line
do
    echo "$line" | cut -c 2-7;
done

