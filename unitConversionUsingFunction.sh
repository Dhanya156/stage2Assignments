#! /bin/bash -x
echo "1. Enter 1 to convert Celsius temperature into Fahrenheit"
echo "2. Enter 2 to Convert Fahrenheit temperatures into Celsius"
read choice
if [ "$choice" -lt 3 ]
then
case $choice in
"1")
echo -n "Enter temperature (C) : "
read tc
tf=`awk 'BEGIN{printf("%.2f", 9 / 5 * '$tc' + 32 )}'`
echo "The temperature is $tf F"
;;
"2")
echo -n "Enter temperature (F) : "
read tf
tc=`awk 'BEGIN{printf("%.2f",5 / 9 * '$tf' - 32)}'`
echo "The temperature is $tc C"
;;
esac
esac
else
echo "Please enter number between 1 and 2"
fi
