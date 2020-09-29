#! /bin/bash
num=$1
pow=2
res=1
for (( n=1;n<=num;n++ ))
do
res=$(( $res * $pow ))
echo $res
done
