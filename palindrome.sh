#! /bin/bash
read -p "enter the number" num
temp=$num
sum=0
function checkPalindrome(){
remainder=0
while [ $num != 0 ]
do
remainder=`expr $num % 10`
sum=`expr $((sum*10)) + $remainder`
num=`expr $num / 10`
done
if [[ $sum -eq $temp ]]
then
echo The number is palindrome
else
echo The number is not a palindrome
fi
}
checkPalindrome

