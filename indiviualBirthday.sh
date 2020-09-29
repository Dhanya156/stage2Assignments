echo "how many individuals record to store"
read individualsRec
initVal=0
declare -A birthMonths
month=""
while [ $initVal -lt $individualsRec ]
do
RandomNum=$(( ( RANDOM % 12 ) + 1 ))
if [ $RandomNum -eq 1 ]
then
month="January "
elif [ $RandomNum -eq 2 ]
then month="Febravary"
elif [ $RandomNum -eq 3 ]
then month="March "
elif [ $RandomNum -eq 4 ]
then month="April "
elif [ $RandomNum -eq 5 ]
then month="May "
elif [ $RandomNum -eq 6 ]
then month="June "
elif [ $RandomNum -eq 7 ]
then month="July "
elif [ $RandomNum -eq 8 ]
then month="August "
elif [ $RandomNum -eq 9 ]
then month="September"
elif [ $RandomNum -eq 10 ]
then month="October "
elif [ $RandomNum -eq 11 ]
then month="November "
elif [ $RandomNum -eq 12 ]
then month="December "
fi
val=${birthMonths[$month]}
val=$(($val+1))
birthMonths[$month]=$val
initVal=$(($initVal+1))
done
echo "--------------------------------------"
echo "month number of individuals"
echo "--------------------------------------"
for i in "${!birthMonths[@]}"
do
echo "$i : ${birthMonths[$i]}"
done
echo "--------------------------------------"

