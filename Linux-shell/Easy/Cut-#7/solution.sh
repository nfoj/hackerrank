#Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.

# Input
# w1.1 w2.1 w3.1 w4.1
# w1.2 w2.2 w3.2 w4.2
# w1.3 w2.3 w3.3 w4.3

# Output
# w4.1
# w4.2
# w4.3


# Solution
cut -d ' ' -f 4

# Solution
while read line
do 
  echo "$line" | cut -d " " -f 4
done

