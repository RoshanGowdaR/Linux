echo Enter the numbe Check whether it prime or not
read num
if [ $num -lt 3 ]
then
    echo The number is prime
    exit
else
    for ((i=3;i<num;i++))
    do
        if [ $((num %2)) -eq 0 ]
        then
            echo The number is not prime
            exit
        fi
    done
fi
echo The number is prime
