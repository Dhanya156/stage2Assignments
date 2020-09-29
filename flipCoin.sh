#! /bin/bash
head=1
tail=0
headtail=$(( RANDOM%2 ))
echo $headtail
if [ $headtail -eq 1 ]
then
echo It is Head
else
echo It is Tail
fi
