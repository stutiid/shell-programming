#!/bin/bash

# shuf -i 100-1000 -n 1 # shuf is used to generate random numbers 
#-i will generate a number in the range written after that
#-n output count =1 i.e. give as output 1 number at a time
for ((i=0; i<10; i++))
do
	A[i]=`shuf -i 100-999 -n 1`
done
 echo ${A[@]}

min=$((A[0]))
max=$((A[0]))

for ((i=0; i<10; i++))
do
	if [ $min -gt ${A[i]} ]
	then
		min2=$min
		min=$((A[i]))
	elif [[ ${A[i]} -lt $min2 && $min -ne ${A[i]} ]]
	then
		min2=$((A[i]))
	fi
	if [ $max -lt ${A[i]} ]
	then
		max2=$max
		max=$((A[i]))
	 elif [[ ${A[i]} -gt $max2 && $max -ne ${A[i]} ]]
   then
      max2=$((A[i]))
	fi
done
echo maximum:$max
echo second maximum:$max2
echo minimum:$min
echo second minimum:$min2

