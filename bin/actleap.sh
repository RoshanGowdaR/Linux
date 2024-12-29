echo Enter the year to check whether it is leap year or not
read year

if [[ $((year % 4)) -eq 0 && $((year % 100)) -ne 0 || $((year % 400)) -eq 0 ]]
then
    echo The entered year is leap year
else
    echo The enetered year is not a leap year
fi