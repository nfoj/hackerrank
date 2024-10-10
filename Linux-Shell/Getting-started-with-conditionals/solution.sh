# Read in one character from STDIN.

# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.

# Input
# y

# Output
# YES


# Solution
read char

if [ $char == "Y" ] || [ $char == "y" ]; then
    echo "YES"
elif [ $char == "N" ] || [ $char == "n" ]; then
    echo "NO"
else
    echo "No other character will be provided as input."
fi


# Solution
read i
if [ $i = "y" ] || [ $i = "Y" ]; then
    echo "YES"
else
    echo "NO"
fi