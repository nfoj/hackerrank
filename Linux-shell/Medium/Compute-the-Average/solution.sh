# Given N integers, compute their average, rounded to three decimal places. 


# Input
# 4
# 1
# 2
# 9
# 8


# Output
# 5.000


# Solution
read n
result=0

for((i=0; i<$n; i++))
do
    read num
    result=$(echo "$result + $num" | bc)
done

r=$(echo "$result / $n" | bc -l)
printf "%0.3f" "$r"
