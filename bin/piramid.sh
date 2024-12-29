echo enter the number of rows
read rows
for ((i=1;i<=rows;i++))
do
    for ((j=i;j<rows;j++))
    do
        echo -n " "
    done
    for ((h=1;h<=((2*i-1));h++))
    do
        echo -n "*"
    done
    echo
done