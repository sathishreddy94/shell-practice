#!/bin/bash

#in shell everything is considered as string only
NUMBER1=100;
NUMBER2=200;
NAME=Devops

SUM=$(($NUMBER1+$NUMBER2+$NAME)) #NAME is string hence shell script will allocate 0 and will not add to the SUM


echo "sum of 2 numbers is : $SUM"

echo "sum of 2 numbers is : ${SUM}"

LEADERS=("modi","trump","putin")

echo "All leaders: ${LEADERS}[]"

