#!/bin/bash 

function degConversion()
{
	case $1 in
		1)
			c=$2
			#read -p enter the tempreratur 0.C - 100.C " c
			if [ $c -ge 0 -a $c -le 100 ]
			then
				a=$(($c*9))
				f=$(($(($a/5))+32))
				echo $f
			else
				echo invalid
			fi
		;;
		2)
			f=$2
			#echo enter the tempreratur 32.F - 212.F
         #read f
         if [ $f -ge 32 -a $f -le 212 ]
         then
				a=$(($f-32))
            c=$(($(($a*5))/9))
				echo $c
         else
				echo invalid
      	fi
		;;
		*)
			echo enter a valid choice
		;;
	esac
}

echo enter your choice for conversion 1-Fahrenheit and 2-Celsius
read choice
echo enter the temperature you want to convert
read temp
temperature="$( degConversion $choice $temp )"
echo temperture after conversion is $temperature
