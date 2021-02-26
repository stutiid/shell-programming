#!/bin/bash -x

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
		echo no
	fi
}

function checkPrime()
{
   flag=0
   num=$1
   for ((i=2; i<=$(($num/2)); i++))
   do
      if [ $(($num%$i))  -eq 0 ]
      then
         flag=1
         break
      fi
   done

   if [ $flag -eq 1 ]
   then
      echo no
   else
      echo prime
   fi
}

echo enter the number to be checked as prime or Palindrome
read num
echo num
p="$( checkPrime $num )"
echo $p
if [ $p == "prime" ]
then
	d="$( checkPalindrome $num )"
	if [ $d == "palindrome" ]
	then
		echo number is palindrome and prime
	else
		echo number is prime but not palindrome
	fi
else
		echo number is not prime
fi
