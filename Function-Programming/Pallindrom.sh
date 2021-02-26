#!/bin/bash -x

#function numbersPalindrome()
#{
#	if [ $1 -eq $2 ]
#	then
#		echo palindrome
#	else
#		echo not palindrome
#	fi
#}

function checkPalindrome() {
	n=$1
	num=$1
	r=0
	while [ $n -ne 0 ]
	do
		a=$(($n%10))
		r=$(($(($r*10))+a))
		n=$(($n/10))
	done
	if [ $num -eq $r ]
	then
		echo palindrome
	else
		echo not palindrome
	fi
}

echo enter the number
read num
p="$( checkPalindrome $num )"
echo $p
