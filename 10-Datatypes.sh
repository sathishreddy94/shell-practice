#!/bin/bash

#in shell everything is considered as string only
NUMBER1=100;
NUMBER2=200;
NAME=Devops

SUM=$(($NUMBER1+$NUMBER2+$NAME)) #NAME is string hence shell script will allocate 0 and will not add to the SUM


echo "sum of 2 numbers is : $SUM"

echo "sum of 2 numbers is : ${SUM}"

#!/bin/bash

# Declare an array
LEADERS=("Gandhi" "Nehru" "Patel" "Bose")

# Access array elements
echo "First leader: ${LEADERS[0]}"
echo "Second leader: ${LEADERS[1]}"
echo "Third leader: ${LEADERS[2]}"
echo "Fourth leader: ${LEADERS[3]}"


echo "All leaders: ${LEADERS[@]}"

echo "All leaders: ${LEADERS[*]}"



