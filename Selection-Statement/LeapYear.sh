#!/bin/bash -x

read -p "enter the year : " year
digits=`echo -n $year | wc -c`
if [ $digits -eq 4 ]
	then
		if [ $(($year%4)) -eq 0 ]
			then
				if [ $(($year % 100)) -eq 0 ]
					then
						if [ $(($year%400)) -eq 0 ]
							then
								echo  year:$year is a leap year
						else
							echo year:$year is not a leap year
						fi
				else
					echo year:$year is a leap year
				fi
		else
			echo year:$year is not a leap year
		fi
else
echo enter a 4 digit year
fi
