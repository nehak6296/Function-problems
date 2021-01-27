#!/bin/bash

read -p "Enter First Number : " number1
read -p "Enter Second Number : " number2

function isPalindrome(){
result=0
sum=0
n1=$1
n2=$2
while [ $n1 -ne 0 ]
do
	rem=$(( $n1%10 ))
	sum=$(( $sum*10+$rem ))
	n1=$(( $n1/10 ))
done

if [ $sum -eq $n2 ]
then
	result=1
	echo "$result"
else
	echo "$result"
fi
}

result="$( isPalindrome $number1 $number2)"

if [ $result -eq 1 ]
then
	printf "Number is Palindrome\n"
else
	printf "Number is Not Palindrome\n"
fi




