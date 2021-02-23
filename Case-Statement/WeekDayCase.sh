#!/bin/bash

read -p "enter a digit : " n
case $n in
	1)
		echo Monday
	;;
	2)
		echo Tuesday
	;;
	3)
   	echo Wednesday
	;;
	4)
   	echo Thursday
	;;
	5)
   	echo Friday
	;;
	6)
   	echo Saturday
	;;
	7)
   	echo Sunaday
	;;
	*)
		echo give a number between 1-7
	;;
esac
