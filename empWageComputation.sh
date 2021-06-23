#!/bin/bash -x

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAY=20;
MAX_HRS_IN_MONTH=100;

#variables
totalEmpHrs=0
totalWorkingDays=0

declare -A dailyWages

function getWorkHrs() {
        case $1 in
                $IS_FULL_TIME)
                        empHrs=16
                        ;;
                $IS_PART_TIME)
                        empHrs=8
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        echo  $empHrs;
}

function getEmpWage() {
	echo $(($1*EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt MAX_HRS_IN_MONTH && 
	$totalWorkingDays -lt $NUM_WORKING_DAY ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+empHrs))
	dailyWages["Day "$totalWorkingDays]=$( getEmpWage $empHrs )
done

echo ${dailyWages[@]}
echo ${!dailyWages[@]}
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo "Total Wage="$totalSalary

