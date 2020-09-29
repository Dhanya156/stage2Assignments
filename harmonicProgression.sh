#! /bin/bash
read -p "Enter the number upto which H.P is to be printed" n
sum=0
for(( i=0;i<=n;i++ ))
do
echo -n "1/$i"
num=`echo $i | awk '{ print 1/$1 }'`
sum=`echo $num $sum |awk '{print $1 + $2}'`
done
printf "\n"
echo "sum of all H.P is: $sum"
