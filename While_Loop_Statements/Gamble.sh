#!/bin/bash -x

startMoney=100
Win=0
bet=0
flag=1
while [[ $startMoney -ge 0 && $startMoney -le 200 ]]
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
done
 echo total bets $bet and total win $win
