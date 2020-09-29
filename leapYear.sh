#! /bin/bash -x
read -p "enter the year:" year
if [[ $year%4 -eq 0 || $year%400 -eq 0 && $year%100 -eq 0 ]]
then
echo $year is a leapyear
else
echo $year is not a leapyear
fi
