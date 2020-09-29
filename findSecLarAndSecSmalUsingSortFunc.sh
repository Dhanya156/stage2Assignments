#! /bin/bash
for(( i=0;i<10;i++ ))
do
array[$i]=$(( RANDOM%900+99 ))
done
echo ${array[@]}
printf ' the second largest number is : %s\n' "${array[@]}" | sort -n | tail -2 | head -1
printf ' the second smallest number is : %s\n' "${array[@]}" | sort -n | head -2 | tail -1
