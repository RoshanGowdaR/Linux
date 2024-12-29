#!/bin/bash
echo "Enter the numbers separated by space:"
read -a numbers
sum=0
count=${#numbers[@]}
for num in "${numbers[@]}"
do
sum=$((sum + num))
done
mean=$((sum / count))
sum_sq_diff=0
for num in "${numbers[@]}"
do
diff=$((num - mean))
sq_diff=$((diff * diff))
sum_sq_diff=$((sum_sq_diff + sq_diff))
done
std_dev=$(echo "scale=2; sqrt($sum_sq_diff / $count)" | bc)
echo "Mean: $mean"
echo "Standard Deviation: $std_dev"