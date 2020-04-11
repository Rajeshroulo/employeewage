#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20

check=$((RANDOM%3))
if [ $isFulltime -eq $check ]
then
 Hrs=8
elif [ $isParttime -eq $check ]
then
 Hrs=16
else
 Hrs=0
fi

salary=$(($RatePerHr*$Hrs))
