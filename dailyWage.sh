#!/bin/bash -x

isPresent=1
check=$((RANDOM%2))

if [ $check -eq $isPresent ]
then
RatePerHr=20
Hrs=8
salary=$(($RatePerHr*$Hrs))
else
salary=0
fi

