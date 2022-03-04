#!/bin/bash -x

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
MAX_WORKING_HRS=40;
TOTAL_WORKING_HRS=40;

#variables
totalEmpHrs=0;
totalworkingDays=0;
totalsalary=0;
totalEmpHrs=0;
day=1;
declare -A dailywage

function getworkingHrs(){
	case $1 in
	$IS_FULL_TIME) empHrs=8
	;;
	$IS_PART_TIME) empHrs=4
	;;
	*) empHrs=0
	;;
	esac
	echo $empHrs
}
function getEmpWage(){
	empHrs=$1
	echo $(($EMP_RATE_PER_HR*$empHrs))
}
while [[ $day -le $NUM_OF_WORKING_DAYS ]] && [[ $totalEmpHrs -lt $TOTAL_WORKING_HRS ]]
do
	workingHrs=$(getworkingHrs $((RANDOM%3)));
	totalEmpHrs=$(($totalEmpHrs+$workingHrs));
	if [[ $totalEmpHrs -gt $TOTAL_WORKING_HRS ]]
	then
	totalEmpHrs=$(($totalEmpHrs+$workingHrs))
	break
	fi
	dailyWage["day"]=$(getEmpWage $workingHrs)
	((day++))
	done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo "${dailyWage[@]}"
echo "${!dailyWage[@]}"
echo "TotalSalary=$totalSalary"

