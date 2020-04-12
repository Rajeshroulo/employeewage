#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20
Hrsinmonth=10
workingdays=20

totalHrs=0
totalworkingdays=0
while [[ $totalHrs -lt $Hrsinmonth && $totalworkingdays -lt $workingdays ]]
do
  ((totalworkingdays++))
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
  totalHrs=$(($totalHrs+$Hrs))
done
totalsalary=$(($totalHrs*$RatePerHr))
