#!/bin/bash
var1=$(($(($RANDOM%10))%2))
echo $var1
if [ $var1 -eq 0 ]
	then
		echo heads
else
	echo tails
fi
