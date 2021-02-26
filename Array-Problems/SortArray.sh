#!/bin/bash

# shuf -i 100-1000 -n 1 # shuf is used to generate random numbers 
#-i will generate a number in the range written after that
#-n output count =1 i.e. give as output 1 number at a time
n=10
for ((i=0; i<n; i++))
do
	A[i]=`shuf -i 100-999 -n 1`
done
 echo ${A[@]}

#sort array
for ((i=0; i<$n-1; i++))
do
	d=$(($n-1-i))
	for ((j=0; j<$d; j++))
	do
		a=$(($j+1))
		if [ ${A[j]} -gt ${A[a]} ]
		then
			temp=${A[j]}
			A[j]=${A[a]}
			A[a]=$temp
		fi
	done
done
echo ${A[*]}
echo 2nd largest ${A[n-2]}
echo  2nd samllest ${A[1]}
