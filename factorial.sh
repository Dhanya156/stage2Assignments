#! /bin/bash
read -p "enter the number to find factorial" num
fact=1
for((i=2;i<=num;i++))
do
fact=$((fact * i))
done
echo $fact
