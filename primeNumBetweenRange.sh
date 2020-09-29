#! /bin/bash
read -p "enter the lower range num:" low
read -p "enter the higher range num:" high
for ((i=low;i<=high;i++))
do
count=0
for ((j=2;j<=i/2;j++))
do
if [ `expr $i % $j` -eq 0 ]
then
count=1
fi
done
if [ $count -eq 0 ]
then
echo $i
fi
done
