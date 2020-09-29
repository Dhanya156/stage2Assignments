declare -A countOfDie
while [ true ]
do
randomNum=$(( ( RANDOM % 6 ) + 1 ))
val=${countOfDie[$randomNum]}
val=$(($val+1))
if [ $val -lt 11 ]
then
countOfDie[$randomNum]=$val
if [ $val -eq 10 ]
then
break
fi
fi
done
echo "--------------------------------------"
echo "DieNum count"
echo "--------------------------------------"
minValue=10
minKey=-1
maxKey=-1
maxValue=0
for i in "${!countOfDie[@]}"
do
if [ ${countOfDie[$i]} -lt $minValue ]
then
minValue=${countOfDie[$i]}
elif [ ${countOfDie[$i]} -gt $maxValue ]
then
maxValue=${countOfDie[$i]}
maxKey=$i
fi
echo "$i : ${countOfDie[$i]}"
done
echo "--------------------------------------"
echo "minimum key and value"
echo "$minKey $minValue"
echo "--------------------------"
echo "maximum key and value"
echo "$maxKey $maxValue"
