#!/bin/bash

echo "enter a number : $NUMBER"

read NUMBER

if [ $((($NUMBER % 1) && ($NUMBER % $NUMBER))) -eq 0 ]; then
    echo "given $NUMBER is prime number"
else
      echo "given $NUMBER is not prime number"
fi
 

