#!/bin/bash -x

isPresent=1;
randomCheck=$(($RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr));
	echo $salary ": is salary of employee";
else
	echo  "employee is absent ";
fi
