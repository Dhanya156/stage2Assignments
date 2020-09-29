#! /bin/bash
onefeet=12
read -p "enter the inches that need to be converted to feet:" inches
feet=`awk 'BEGIN{printf("%0.2f", '$inches' / '$onefeet')}'`
echo "the feet of $inches is: $feet"

read -p "enter the lenght of rectangle in feet :" lenft
read -p "enter the bredth of rectangle in feet :" breft
lenmt=`awk 'BEGIN{printf("%.2f" , '$lenft' * 3.208 )}'`
bremt=`awk 'BEGIN{printf("%.2f" , '$breft' * 3.208 )}'`
echo $lenmt $bremt
area=`awk 'BEGIN{printf("%.2f" , '$lenmt' * '$bremt' )}'`

echo area of reactangle: $area

areaof25plots=`awk 'BEGIN{printf("%.2f" , 25 * '$area' )}'`
echo area of 25 such plots:$areaof25plots
