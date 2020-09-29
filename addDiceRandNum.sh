#! /bin/bash -x
sum=0
count=2
for(( i=1;i<=count;i++ ))
do
randNum=$(( RANDOM%6 + 1))
echo random number is:$randNum
sum=$(( sum + randNum ))
done
echo sum of two dice is:$sum
