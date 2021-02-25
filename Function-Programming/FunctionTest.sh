#!/bin/bash -x

function myFunc() # its not mandotory to write keyword function
{
	echo $1
}

result="$( myFunc $((RANDOM%2)) )"
if [ $result -eq 1 ]
then
	echo Success
else
	echo Failure
fi

