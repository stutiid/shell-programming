#!/bin/bash

var1=$(($(($RANDOM%6))+1))
var2=$(($(($RANDOM%6))+1))
 
var3=$(($var1+$var2))
echo Addition od Dice numbers is $var3
