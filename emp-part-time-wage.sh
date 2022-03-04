#!/bin/bash -x

ispartTime=1;
isFullTime=2;
empRateHr=20;
randomCheck=$(($RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
	empHrs=8;
	salary=$(( $empHrs * $empRateHr ));
	echo $salary ": is the salary of the employee";
elif [ $ispartTime -eq $randomCheck ];
then
	empHrs=4;
	salary=$(( $empHrs * $empRateHr ));
	echo $salary ": is the salary of the employee";

else
	empHrs=0;
	salary=$(( $empHrs * $empRateHr ));
	echo $salary ": employee is absent";

fi

