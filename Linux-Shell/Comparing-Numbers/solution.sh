# Given two integers,  and , identify whether  or  or .

# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y

# Input
# 2
# 2

# Output
# X is equal to Y


# Solution
read X
read Y

if ((X < Y)); then
    echo "X is less than Y"
elif ((X > Y)); then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi


# Solution_01
read x;
read y;

if [ $x -gt $y ]; then 
    echo "X is greater than Y";
elif [ $x -lt $y ] ; then 
    echo "X is less than Y";
else 
    echo "X is equal to Y";
fi

#else [ $x -gt $y ]; then 
#    echo "X is greater than Y";
#fi
