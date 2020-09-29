#! /bin/bash
largest=0
second=0
for (( i=0;i<=10;i++ ))
do
array[$i]=$(( RANDOM%900+99 ))
#echo ${array[@]}
done
echo ${array[@]}
if [[ ${array[0]} -gt ${array[1]} ]]
then
largest=${array[0]}
secondLargest=${array[1]}
else
largest=${array[1]}
secondLargest=${array[0]}
fi
for (( i=2;i<=10;i++ ))
do
if [[ $largest -lt ${array[$i]} ]]
then
secondLargest=$largest
largest=${array[$i]}
elif [[ $secondLargest -lt ${array[$i]} ]]
then
secondLargest=${array[$i]}
fi
done
if [[ ${array[0]} -lt ${array[1]} ]]
then
smallest=${array[0]}
secondSmallest=${array[1]}
else
smallest=${array[1]}
secondSmallest=${array[0]}
fi
for (( i=2;i<=10;i++ ))
do
if [[ $smallest -gt ${array[$i]} ]]
then
secondSmallest=$smallest
smallest=${array[$i]}
elif [[ $secondSmallest -gt ${array[$i]} ]]
then
secondSmallest=${array[$i]}
fi
done
echo The second largest number is: $secondLargest
echo The second smallest number is: $secondSmallest
