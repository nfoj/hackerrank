# Given two integers, X and Y, find their sum, difference, product, and quotient.

# Input
# 5
# 2

# Output
# 7
# 3
# 10
# 2


# Solution
read a
read b

echo "$((a + b))"
echo "$((a - b))"
echo "$((a * b))"
echo "$((a / b))"


# Solution 
read a
read b

echo "$[a+b]"
echo "$[a-b]"
echo "$[a*b]"
echo "$[a/b]"


# Solution
read a
read b

echo `expr $a + $b `
echo `expr $a - $b `
echo `expr $a \* $b `
echo `expr $a / $b `


# Solution
read X
read Y

for op in '+' '-' '*' '/'
do
    echo "$X $op $Y" | bc
done
