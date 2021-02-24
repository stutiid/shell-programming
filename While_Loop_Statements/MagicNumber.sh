#!/bin/bash

#read -p "enter the number between 1 and 100 " x
echo Think of a number between 1 and 100
low=1
high=100
while [ $low -lt $high ]
do
	mid=$(($(($high+$low))/2))
	echo mid:$mid is the number - press 1
	echo number is less than mid - press 2
	echo number is greater than mid - press 3
	echo enter your choice
	read num
	case $num in
		1)
			break
		;;
		2)
			high=$mid
		;;
		3)
			low=$mid
		;;
		*)
			echo enter a valid choice 1,2,3
		;;
	esac
done
echo number is $mid
