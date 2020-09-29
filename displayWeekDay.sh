#! /bin/bash
read -p "enter a number of day:" num
if [ $num -eq 0 ]
then
echo "SUNDAY"
elif [ $num -eq 1 ]
then
echo "MONDAY"
elif [ $num -eq 2 ]
then
echo "TUESDAY"
elif [ $num -eq 3 ]
then
echo "WEDNESDAY"
elif [ $num -eq 4 ]
then
echo "THURSDAY"
elif [ $num -eq 5 ]
then
echo "FRIDAY"
elif [ $num -eq 6 ]
then
echo "SATURDAY"
else
echo "the $num is not a number of a week"
fi
