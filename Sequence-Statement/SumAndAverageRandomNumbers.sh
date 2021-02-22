#!/bin/bash
diff=$(($((100-10))+1))
var1=$(($((RANDOM%diff))+10))
echo $var1
var2=$(($(($RANDOM%$diff))+10))
var3=$(($(($RANDOM%$diff))+10))
var4=$(($(($RANDOM%$diff))+10))
var5=$(($(($RANDOM%$diff))+10))

sum=$(($var1 + $var2 + $var3 + $var4 + $var5))
avg=$(($sum/5))
echo 5 random numbers sum is $sum and average is $avg
