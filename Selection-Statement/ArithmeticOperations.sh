#!/bin/bash

read -p "enter the first number : " a
read -p "enter the second number : " b
read -p "enter the third number : " c
 var1=$((a+$((b*c))))
echo $var1
var2=$((c+$((a/b))))
echo $var2
var3=$(($((a%b))+c))
echo $var3
var4=$(($((a*b))+c))
echo $var4

if [ $var1 -gt $var2 -a $var1 -gt $var3 -a $var1 -gt $var4 ]
   then
      echo var1:$var1 is maximum
elif [ $var2 -gt $var1 -a $var2 -gt $var3 -a $var2 -gt $var4 ]
   then
      echo var2:$var2 is maximum
elif [ $var3 -gt $var1 -a $var3 -gt $var3 -a $var3 -gt $var4 ]
   then
      echo var3:$var3 is maximum
else
	echo var4:$var4 is maximum
fi

if [ $var1 -lt $var2 -a $var1 -lt $var3 -a $var1 -lt $var4 ]
   then
      echo var1:$var1 is minimum
elif [ $var2 -lt $var1 -a $var2 -lt $var3 -a $var2 -lt $var4 ]
   then
      echo var2:$var2 is minimum
elif [ $var3 -lt $var1 -a $var3 -lt $var2 -a $var3 -lt $var4 ]
   then
      echo var3:$var3 is minimum
else
	echo var4:$var4 is minimum
fi
