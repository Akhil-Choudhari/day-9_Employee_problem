#!/bin/bash -x

absent=0;
fullpresent=1;
partpresent=2;
perHourSalary=20;
isPresent=$(($RANDOM%3));
case $isPresent in
	$absent)
	echo " Employee is absent";
	workingHr=0;
	;;

	$fullpresent)
	echo "Employee is fulltime present";
	workingHr=8;
	;;

	$partpresent)
	echo "Employee is part time present";
	workingHr=4;
	;;

esac
salary=$(($perHourSalary * $workingHr));
echo "employee has earned :" $salary;
