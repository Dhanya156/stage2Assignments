#! /bin/bash
read -p "Enter the value to be coverted:" val
read -p "enter the format to be coverted:" format
case $format in
inToft )
inToft=`awk 'BEGIN{printf("%.2f",'$val' / 12 )}'`
echo "inch to feet coverted value is:" $inToft
;;
ftToin )
ftToin=`awk 'BEGIN{printf("%.2f",'$val' * 12 )}'`
echo "feet to inch coverted value is:" $ftToin
;;
mtToft )
mtToft=`awk 'BEGIN{printf("%.2f",'$val' / 3.2808 )}'`
echo "meter to feet coverted value is:" $mtToft
;;
ftTomt )
ftTomt=`awk 'BEGIN{printf("%0.2f",'$val' * 3.2808)}'`
echo "feet to meter coverted value if:" $ftTomt
;;
* )
echo "format not found"
esac
