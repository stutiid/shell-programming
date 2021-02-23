#!/bin/bash

echo enter a number in unit tens and hundreds etc
read num
case $num in 
	1)
		echo Units
	;;
	10)
		echo Tens
	;;
	100)
		echo Hundreds
	;;
	1000)
   	echo Thousands
	;;
	10000)
   	echo Ten Thousands
	;;
	100000)
		echo Lakhs
	;;
	*)
		echo enter a number in zeroes form
esac
