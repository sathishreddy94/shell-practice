#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e "$G Hello World" # if we give like this following lines also will be in same color
echo "check this color"


echo -e "$G Hello World $N" # if we give like this color is limited only this line alone
echo "check this color"
