#!/bin/bash -x

#constants are written in Captital letters only
IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20;
NUMBER_OF_WORKING_DAYS=20
#variable
totalSalary=0
for ((day=1; day<=$NUMBER_OF_WORKING_DAYS; day++))
do
	empCheck=$((RANDOM%3))	
	case $empCheck in 
		$IS_FULLTIME)
			empHrs=8
		;;
		$IS_PARTTIME)
			empHrs=4
		;;
		*)
			empHrs=0
		;;
	esac
	salary=$(($empHrs*$EMP_RATE_PER_HR))
	totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
