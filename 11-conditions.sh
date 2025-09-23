#!/bin/bash

NUMBER=5

if [ $NUMBER -lt 10 ]; then

    echo "given number is $NUMBER is less than 10"

elif [ $NUMBER -eq 10 ]; then

    echo "given number is $NUMBER is equal to 10"

else 
    echo "given number is $NUMBER is more than/greater than 10"

fi