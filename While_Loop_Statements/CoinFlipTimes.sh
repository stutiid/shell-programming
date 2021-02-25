#!/bin/bash -x
HeadN=0
TailN=0

while [[ $HeadN -lt 11 && $TailN -lt 11 ]] 
do
	var1=$(($(($RANDOM%10))%2))
	if [ $var1 -eq 0 ]
	then
		HeadN=$(($HeadN+1))
	else
		TailN=$(($TailN+1))
	fi
done
if [ $HeadN -eq 11 ]
then
	echo Heads came up 11 times
else
	echo Tails came up 11 times
fi
