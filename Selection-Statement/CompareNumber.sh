#!/bin/bash
 
var1=13
var2=20

if [ $var1 -gt $var2 ]
	then
		echo $var1 is greater than $var2
elif [ $var1 -lt $var2 ]
	then
		 echo $var2 is greater than $var1
else
	echo $var1 is eqaul to $var2
fi
