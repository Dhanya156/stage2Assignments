#! /bin/bash
sum=0
count=5
for(( i=1;i<=count;i++ ))
do
randNum=$(( RANDOM%100 ))
echo "random number: $randNum"
sum=$(( sum + randNum ))
avg=$(( sum / count ))
done
echo "the sum is: $sum"
echo "the average is: $avg"
