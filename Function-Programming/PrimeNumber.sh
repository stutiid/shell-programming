#!/bin/bash

function checkPrime()
{
	flag=0
	num=$1
	for ((i=2; i<=$(($num/2)); i++))
	do
		if [ $(($num%$i))  -eq 0 ]
		then
			flag=1
			break
		fi
	done

	if [ $flag -eq 1 ]
	then
		echo number is not prime
	else
		echo number is prime
	fi
}
echo enter the number to be checked as prime or not
read num
p="$( checkPrime $num )"
echo $p
