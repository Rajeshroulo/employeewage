#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20
workingdays=20
Hrsinmonth=10

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

function Dailywage( ) {
  local Hrs=$1
  wage=$(($Hrs*$RatePerHr))
  echo $wage
}

while [[ $totalHrs -lt $Hrsinmonth && $totalworkingdays -lt $workingdays ]]
do
  ((totalworkingdays++))
   workHrs="$( getworkingHrs $((RANDOM%3)) )"
   totalHrs=$(($totalHrs+$workHrs))
   empdailywage[$totalworkingdays]="$( Dailywage $Hrs )"
done

totalsalary="$( Dailywage $totalHrs )"
echo "Daily Wage" ${empdailywage[@]}


