#!/bin/bash -x

read -p "enter the number : " n

d=$(echo $n | awk '{print sqrt($n)}' | awk -F. '{print $1}')

count=0 #counter
flag=0
even=0
# to eleminate all even
for((; $(($n%2)) == 0;))
do
	n=$(($n/2))
	A[count]=2
	even=1
done

# to eleminate all odd
for ((i=3; i<=$d; i=$(($i+2)) ))
do
	for((; $(($n%$i))==0;))
	do
		n=$(($n/$i))
		#echo $i
		if [ $even -eq 0 ]
		then
			A[count]=$i
			even=1;
			((count++))
		fi
		if [ ${A[count-1]} != $i ]
		then
			A[((++count))]=$i
		fi
	done
done

#echo $n
# to print the number which is prime
if [ $n -gt 2 ]
then
	#echo $n
	A[++count]=$n
fi

echo ${A[@]}
