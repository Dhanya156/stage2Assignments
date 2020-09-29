#! /bin/bash
read -p "enter a single digit number:" num
case $num in
1 )
echo unit ;;
10 )
echo ten ;;
100 )
echo hundred ;;
1000 )
echo thousand ;;
* )
echo number not found ;;
esac
