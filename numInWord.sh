#! /bin/bash
read -p "enter a number:" num
if [ $num -eq 0 ]
then
echo number is ZERO
elif [ $num -eq 1 ]
then
echo number is ONE
elif [ $num -eq 2 ]
then
echo number is TWO
elif [ $num -eq 3 ]
then
echo number is THREE
elif [ $num -eq 4 ]
then
echo number is FOUR
elif [ $num -eq 5 ]
then
echo number is FIVE
elif [ $num -eq 6 ]
then
echo number is SIX
elif [ $num -eq 7 ]
then
echo number is SEVEN
elif [ $num -eq 8 ]
then
echo number is EIGHT
elif [ $num -eq 9 ]
then
echo number is NINE
else
echo the number is two digit
fi
