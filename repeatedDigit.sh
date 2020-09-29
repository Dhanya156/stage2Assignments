#!/bin/bash
echo -n "Enter numnber from : "
read n
echo -n "Enter numnber to : "
read m
arr=()
if [ $m -le 100 ]
then
for i in $(seq $n $m); do
rem=$(( $i % 11 ))
if [ $rem -eq 0 ]
then
arr+=( $i )
fi
done
echo "${arr[*]}"
else
echo "out of range"
fi
