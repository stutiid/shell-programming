#!/bin/bash -x

lowR=10
highR=100
d=`echo -n $highR | wc -c`

for (( k=1; k<$d; k++))
do
	if [ $k -eq 1 ]
	then
		for ((i=1; i<=9; i++ ))
		do
			if [[ $i -ge $lowR && $i -lt $highR ]]
			then
				A[j]=$i
				((j++))
			fi
		done
	elif [ $k -eq 2 ]
	then
		for ((i=1; i<=9; i++))
		do
			a=$(($i*11))
			 if [[ $a -ge $lowR && $a -lt $highR ]]
         then
            A[j]=$a
            ((j++))
         fi
		done
	else
		echo "Range Exceeded"
	fi
done
echo numbers between $lowR and $highR with same digit are ${A[*]}
