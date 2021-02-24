#!/bin/bash

echo enter the range between which prime numbers are to be found
echo enter the first number
read a
echo enter the second number
read b
for ((num=a; num<=b; num++))
do 
	for ((i=2; i<=$(($num/2)); i++))
	do
		if [ $(($num%$i))  -eq 0 ]
			then
				flag=1
				break
		fi
	done

	if [ $flag -eq 0 ]
		then
			echo $num is prime
	fi
	flag=0;
done
