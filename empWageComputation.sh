#!/bin/bash -x

EMP_RATE_PER_HR=20;
FULL_TIME_HR=8;

empCheck=$((RANDOM%2))
isPresent=1;

if [ $isPresent -eq $empCheck ]
then
	salary=$(( $EMP_RATE_PER_HR*$FULL_TIME_HR ))
else 
	salary=0;
fi 

echo "Daily Wage of an Employee= " $salary
