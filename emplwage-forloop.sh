#!/bin/bash -x

part_time=1;
full_time=2;
absent=0;
emp_rate_per_hr=20;
num_of_working_days=20;

for (( day=1 ; day<=$num_of_working_days ; day++ ))
do
	checkemp=$(($RANDOM % 3));
	case $checkemp in
	$part_time)
	empHrs=4;
	;;
	$full_time)
	empHrs=8;
	;;
	$absent)
	empHrs=0;
	;;
	esac

	salary=$(($emp_rate_per_hr*$empHrs));
	totalsalary=$(($totalsalary+$salary));
	echo "day= $day" "$empHrs salary=$totalsalary";
done
