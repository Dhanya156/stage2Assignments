#! /bin/bash
echo "Enter the number"
read n
prime () {
number=$1
i=2
flag=0
while test $i -le `expr $number / 2`
do
if test `expr $number % $i` -eq 0
then
flag=1
fi
i=`expr $i + 1`
done
if test $flag -eq 1
then
echo "The $number is Not Prime"
else
echo "The $number is Prime"
fi
}
palindrome (){
n=$1
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo palindrome of $1 is $reverse
prime $reverse
}
prime $n
palindrome $n
