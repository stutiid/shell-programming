#!/bin/bash

n=$1
table=1
for ((i=1; i<=n; i++))
do
	table=$(($table*2))
	echo $table
done
