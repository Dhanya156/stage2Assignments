#! /bin/bash
echo "Select number between 1 to 100"
initVal=0
maxVal=100
numBy=0
while [ $initVal -lt $maxVal ]
do
numBy=$(expr $maxVal + $initVal )
numBy=$(expr $numBy / 2)
if (( $(expr $maxVal - $initVal) == 1 ))
then
echo "your number is $numBy"
break
fi
echo "is your number less than $numBy press y or n"
read input
if [ $input == "y" ]
then
maxVal=$numBy
elif [ $input == "n" ]
then
initVal=$numBy
else
echo "enter y or n"
fi
done
