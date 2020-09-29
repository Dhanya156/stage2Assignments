#! /bin/bash
isprime=0
index=0
read -p "enter the number to print prime factors:" num
j=0
for (( i=2;i<=num;i++ ))
do
if [ `expr $num % $i` -eq 0 ]
then
num=(($num/$i))
primeArray[((index++))]=$i
continue
fi
done
echo ${primeArray[@]}
