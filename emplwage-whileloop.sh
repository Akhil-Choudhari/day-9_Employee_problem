#!/bin/bash -x

#Constants
part_time=1;
full_time=2;
absent=0;
emp_rate_per_hr=20;
num_of_working_days=20;
max_hrs_in_month=40;

#variables
totalemphrs=0;
totalworkingdays=0;
totalsalary=0;
while [[ $totalemphrs -lt $max_hrs_in_month && $totalworkingdays -lt $num_of_working_days ]]
do
	checkemp=$(($RANDOM%3));
	case $checkemp in
	$full_time)
	emphrs=8;
	;;
	$part_time)
	emphrs=4;
	;;
	$absent)
	emphrs=0;
	;;
	esac
	totalemphrs=$(($totalemphrs+$emphrs));
	echo "$totalemphrs"
done
totalsalary=$(($totalemphrs*$emp_rate_per_hr));
	echo "Toralsalary=$totalsalary";


