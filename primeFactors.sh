#! /bin/bash
isprime=0
read -p "enter the number to print prime factors:" num
for (( i=2;i*i<=num;i++ ))
do
if [ `expr $num % $i` -eq 0 ]
then
isprime=1
for (( j=2;j<=i/2;j++ ))
do
if [ `expr $i % $j` -eq 0 ]
then
isprime=0
fi
done
if [ $isprime -eq 1 ]
then
echo $i
fi
fi
done
