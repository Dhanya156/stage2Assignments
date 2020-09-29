#! /bin/bash
num=$1
n=1
pow=2
res=1
while [ $n -le $num ]
do
res=$(( $res * $pow ))
echo $res
if [ $res -eq 256 ]
then
break
fi
n=$(( n+1 ))
done
