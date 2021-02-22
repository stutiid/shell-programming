#!/bin/bash

empCheck=$((RANDOM%2))
isPresent=1
if [ $empCheck -eq $isPresent ]
	then
		empRatePerHr=20;
		empHrs=8;
		salary=$(($empRatePerHr * $empHrs));
		echo Employee is present so salary is $salary
else 
	
	echo Employee is absent so salary is 0
fi
