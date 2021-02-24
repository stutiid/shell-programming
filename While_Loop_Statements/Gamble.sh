#!/bin/bash -x

startMoney=100
Win=0
bet=0
flag=1
while [ $flag -eq 1 ]
do
	n=$((RANDOM%2))
	((bet++))
  	if [ $n -eq 0 ]
	then
		startMoney=$(($startMoney-1))
	else
		startMoney=$(($startMoney+1))
		((win++))
	fi
	if [ $startMoney -eq 0 -o $startMoney -eq 200 ]
	then
		flag=0
	else
		flag=1
	fi
done
 echo total bets $bet and total win $win
