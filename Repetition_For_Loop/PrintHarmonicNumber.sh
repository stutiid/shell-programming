#!/bin/bash

n=$1
echo -e "1\c"
for ((i=2; i<=n; i++))
do
	echo -e " +\c"
	echo -e " 1/$i\c"
done
