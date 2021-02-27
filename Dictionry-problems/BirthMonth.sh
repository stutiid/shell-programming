#!/bin/bash -x

declare -A month

for ((i=1; i<=12; i++))
do
	month[$i]=0
done

for ((i=0; i<50; i++))
do
	n=$(($((RANDOM%12))+1))
	case $n in
			1)
				month[1]=$((${month[1]}+1))
			;;
			2)
				month[2]=$((${month[2]}+1))
			;;
			3)
           	month[3]=$((${month[3]}+1))
         ;;
		 	4)
            month[4]=$((${month[4]}+1))
         ;;
			5)
            month[5]=$((${month[5]}+1))
         ;;
			6)
            month[6]=$((${month[6]}+1))
         ;;
			7)
            month[7]=$((${month[7]}+1))
         ;;
			8)
            month[8]=$((${month[8]}+1))
         ;;
			9)
            month[9]=$((${month[9]}+1))
         ;;
			10)
            month[10]=$((${month[10]}+1))
         ;;
			11)
            month[11]=$((${month[11]}+1))
         ;;
			12)
            month[12]=$((${month[12]}+1))
         ;;
			*)
				echo default
			;;
	esac
done
for ((i=1; i<=12; i++))
do
	echo individuals having same birth in $i month is ${month[$i]} in 1992-93
done
