#! /bin/bash
day=$1
month=$2
if (( $month == 3 & $day >= 20 & $day <= 31 ))
then
echo true
elif (( $month == 4 & $day > 0 & $day <= 30 ))
then
echo true
elif (( $month == 5 & $day > 0 & $day <= 31 ))
then
echo true
elif (( $month == 6 & $day > 0 & $day <= 20 ))
then
echo true
else
echo false
fi
