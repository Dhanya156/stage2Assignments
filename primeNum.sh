#! /bin/bash
read -p "enter the num:" num
count=0
for(( i=2;i<=num/2;i++ ))
do
if [ `expr $num % $i` -eq 0 ]
then
count=1
fi
done
if [ $count -eq 1 ]
then
echo not a prime
else
echo prime
fi
