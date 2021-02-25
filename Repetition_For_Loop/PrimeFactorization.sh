#!/bin/bash

read -p "enter the number : " n

d=$(echo $n | awk '{print sqrt($n)}' | awk -F. '{print $1}')

# to eleminate all even
for((; $(($n%2))==0;))
do
	n=$(($n/2))
	echo 2
done

# to eleminate all odd

for ((i=3; i<=$d; i=$(($i+2)) ))
do
	for((; $(($n%i))==0;))
	do
		n=$(($n/$i))
		echo $i
	done
done

#echo $n
# to print the number which is prime
if [ $n -gt 2 ]
then
	echo $n
fi

