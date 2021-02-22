#!/bin/bash

diff=$((1000-100+1))
var1=$(($((RANDOM%diff))+100))
echo $var1
var2=$(($((RANDOM%diff))+100))
echo $var2
var3=$(($((RANDOM%diff))+100))
echo $var3
var4=$(($((RANDOM%diff))+100))
echo $var4
var5=$(($((RANDOM%diff))+100))
echo $var5


if [ $var1 -gt $var2 -a $var1 -gt $var3 -a $var1 -gt $var4 -a $var1 -gt $var5 ]
	then 
		echo var1:$var1 is greatest
elif [ $var2 -gt $var1 -a $var2 -gt $var3 -a $var2 -gt $var4 -a $var2 -gt $var5 ]
   then
      echo var2:$var2 is greatest
elif [ $var3 -gt $var1 -a $var3 -gt $var2 -a $var3 -gt $var4 -a $var3 -gt $var5 ]
   then
      echo var3:$var3 is greatest
elif [ $var4 -gt $var1 -a $var4 -gt $var2 -a $var4 -gt $var3 -a $var4 -gt $var5 ]
   then
      echo var4:$var4 is greatest
else
      echo var5:$var5 is greatest

fi

if [ $var1 -lt $var2 -a $var1 -lt $var3 -a $var1 -lt $var4 -a $var1 -lt $var5 ]
	then
		echo var1:$var1 is minimum
elif [  $var2 -lt $var1 -a $var2 -lt $var3 -a $var2 -lt $var4 -a $var2 -lt $var5 ]
   then
      echo var2:$var2 is minimum
elif [  $var3 -lt $var1 -a $var3 -lt $var2 -a $var3 -lt $var4 -a $var3 -lt $var5 ]
   then
      echo var3:$var3 is minimum
elif [  $var4 -lt $var1 -a $var4 -lt $var3 -a $var4 -lt $var2 -a $var4 -lt $var5 ]
   then
      echo var4:$var4 is minimum
else
	echo var5:$var5 is minimum
fi
