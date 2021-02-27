#!/bin/bash -x

j=0
for ((i=10; i<100; i++))
do
	num=$i
	d=`echo -n $num | wc -c`
	if [ $d -eq 1 ]
	then
		A[j]=$num
		((j++))
	elif [ $d -eq 2 ]
	then
		if [ $(($num%11)) -eq 0 ]
		then
			A[j]=$num
			((j++))
		fi
	elif [ $d -eq 3 ]
	then
		if [ $(($num%111)) -eq 0 ]
		then
			A[j]=$num
			((j++))
		fi
	else
		echo "exceeded the range "
	fi
done
echo numbers with same digit are ${A[*]}

