#! /bin/bash
maxval=99
minval=1000
for(( i=0;i<5;i++ ))
do
randNum=$(( RANDOM%900 + 99 ))
echo Random number: $randNum
if [ $randNum -lt $minval ]
then
minval=$randNum
elif [ $randNum -gt $maxval ]
then
maxval=$randNum
fi
done
echo the minimum value is:$minval
echo the maximum value is:$maxval
