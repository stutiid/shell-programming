#!/bin/bash

declare -A Dice

Dice[1]=0
Dice[2]=0
Dice[3]=0
Dice[4]=0
Dice[5]=0
Dice[6]=0

for ((i=0; i<50; i++))
do
	num=$(($((RANDOM%6))+1))
	case $num in
		1)
			Dice[1]=$((${Dice[1]}+1))
			if [ ${Dice[1]} -eq 10 ]
			then
				echo 1 has come 10 times on dice
				break
			fi
		;;
		2)
         Dice[2]=$((${Dice[2]}+1))
         if [ ${Dice[2]} -eq 10 ]
         then
				echo 2 has come 10 times on dice
            break
         fi
      ;;
		3)
         Dice[3]=$((${Dice[3]}+1))
         if [ ${Dice[3]} -eq 10 ]
         then
				echo 3 has come 10 times on dice
            break
         fi
      ;;
		4)
         Dice[4]=$((${Dice[4]}+1))
         if [ ${Dice[4]} -eq 10 ]
         then
			   echo 4 has come 10 times on dice
            break
         fi
      ;;
		5)
        	Dice[5]=$((${Dice[5]}+1))
         if [ ${Dice[5]} -eq 10 ]
         then
				echo 5 has come 10 times on dice
            break
         fi
      ;;
		6)
         Dice[6]=$((${Dice[6]}+1))
         if [ ${Dice[6]} -eq 10 ]
         then
	 			echo 6 has come 10 times on dice
            break
         fi
      ;;

	esac
done
#echo $i
#echo ${Dice[@]}
min=${Dice[1]}
max=${Dice[1]}
diceNumberMax=1
diceNumberMin=1
for ((i=2; i<=6; i++))
do
	if [ $max -lt ${Dice[$i]} ]
	then
		max=${Dice[$i]}
		diceNumberMax=$i
	fi
	if [ $min -gt ${Dice[$i]} ]
	then
		min=${Dice[$i]}
		diceNumberMin=$i
	fi
done

echo Dice number $diceNumberMax has come maximum times - $max
echo Dice number $diceNumberMin has come minimum times - $min 
