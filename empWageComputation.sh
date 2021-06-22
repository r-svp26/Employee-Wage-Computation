#!/bin/bash -x

empCheck=$((RANDOM%2))

IS_PRESENT=1

if [ $empCheck -eq IS_PRESENT ]
	echo "Employee is present."
else 
	echo "Employee is absent."
fi 
