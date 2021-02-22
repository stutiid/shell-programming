#!/bin/bash -x
 read -p "enter the month : " month
read -p "enter the day : " day
echo $month $day
if [ $month == "march" ]
	then
		if [ $day -ge 20 -a $day -le 31 ]
			then
				echo true
		else
			echo false
		fi
elif [ $month == "april" ]
   then
      if [ $day -ge 1 -a $day -le 30 ]
         then
            echo true
      else
         echo false
      fi
elif [ $month == "may" ]
   then
      if [ $day -ge 1 -a $day -le 31 ]
         then
            echo true
      else
         echo false
      fi
elif [ $month == "june" ]
   then
      if [ $day -ge 1 -a $day -le 20 ]
         then
            echo true
      else
         echo false
      fi
else 
echo false
fi
