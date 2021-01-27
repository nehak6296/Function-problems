#!/bin/bash

echo "Select conversion" 
read -p "Enter 1 for celsius to Fahrenit\n Enter 2 for Fahrenit to celsius" choice

result=0;

function celToFar(){

        echo "$(($(($1*9))/5+32))"
}

function farToCel(){

        echo "$(($(($1-32))*5/9))"
}


case $choice in
	1)
	read -p "Enter Temperature in Celcius:" input
	result="$( celToFar $input )"
	;;
	2)
	read -p "Enter Temperature in Fahrenit:" input
	result="$( farToCel $input )"
	;;
	*)
	echo "ERROR"
	;;
esac
	echo $result
