#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20
totalSalary=0
Workingdays=20
for (( day=1; day<=$Workingdays; day++ ))
do
check=$((RANDOM%3))
case $check in
        $isParttime )
          Hrs=4
          ;;
        $isFulltime )
          Hrs=8
          ;;
        * )
          Hrs=0
          ;;
esac
salary=$(($RatePerHr*$Hrs))
totalSalary=$(($totalSalary+$salary))
done
