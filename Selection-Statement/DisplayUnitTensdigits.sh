#!/bin/bash

echo enter a number in unit tens and hundreds etc
read num
if [ $num -eq 1 ]
	then
		echo Units
elif [ $num -eq 10 ]
	then 
		echo Tens
elif [ $num -eq 100 ]
   then
      echo Hundreds
elif [ $num -eq 1000 ]
   then
      echo Thousands
elif [ $num -eq 10000 ]
   then
      echo Ten Thousands
elif [ $num -eq 100000 ]
	then
		echo Lakhs
else
	echo enter a number in zeroes form
fi
