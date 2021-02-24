#!/bin/bash

echo Enter a number
read n
sum=0
for ((i=1; i<=n; i++ ))
do
sum=$(($sum+$((10000/$i))))
done
echo sum without using cutcomand $sum
echo Sum n series is

for ((i=1; i<=5; i++ ))
do
a=`echo $sum | cut -c $i` # -c to pick the only character at position $i
echo -e "$a\c"  #\c so that whole input is printed in one line
if [ $i -eq 1 ]
then
echo -e ".\c"
fi
done
