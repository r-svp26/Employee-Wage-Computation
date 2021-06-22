#!/bin/bash -x

IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;

empCheck=$((RANDOM%3))

if [ $IS_FULL_TIME -eq $empCheck ]
then
	empHrs=16

elif [ $IS_PART_TIME -eq $empCheck ]
then
	empHrs=8

else
	empHrs=0

fi 

salary=$((empHrs*EMP_RATE_PER_HR))
echo $salary
