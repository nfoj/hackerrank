# Given three integers (X, Y, and Z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE

# Input
# 2
# 2
# 2

# Output
# EQUILATERAL

# Input
# 2
# 3
# 4

# Output
# EQUILATERAL


# Solution
read x
read y
read z

if [ $x == $y ] && [ $y == $z ]; then
    echo "EQUILATERAL"
elif [ $x == $y ] && [ $x != $z ]; then
    echo "ISOSCELES"
elif [ $x == $z ] && [ $x != $y ]; then
    echo "ISOSCELES"
elif [ $y == $z ] && [ $x != $y ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi


# Solution
read a
read b
read c

if (( $a == $b && $a == $c )); then
  echo "EQUILATERAL"
elif (( $a == $b || $a == $c || $b == $c)); then
  echo "ISOSCELES"
else
  echo "SCALENE"
fi


# Solution
read x
read y
read z

if [ $x == $y ] && [ $x == $z ] && [ $y == $z ]; then
    echo "EQUILATERAL"
elif [ $x != $y ] && [ $x != $z ] && [ $y != $z ]; then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi