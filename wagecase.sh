#!/bin/bash -x

isParttime=1
isFulltime=2
RatePerHr=20
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

