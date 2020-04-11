#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
echo present
else
echo absent
fi
