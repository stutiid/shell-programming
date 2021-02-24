#!/bin/bash

n=$1
table=1
i=1
while [ $i -le $n ]
do
	table=$(($table*2))
	echo $table
	if [ $table -eq 256 ]
	then
		break
	fi
	((i++))
done
