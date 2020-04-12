#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20
Hrsinmonth=4
workingdays=20
totalHrs=0
totalworkingdays=0
function getworkingHrs( ){
  case $1 in
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
 echo $Hrs
}
while [[ $totalHrs -lt $Hrsinmonth && $totalworkingdays -lt $workingdays ]]
do
  ((totalworkingdays++))
   workHrs="$( getworkingHrs $((RANDOM%3)) )"
   totalHrs=$(($totalHrs+$workHrs))
done
totalsalary=$(($totalHrs*$RatePerHr))

