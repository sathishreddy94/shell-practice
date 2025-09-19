#!/bin/bash

echo "Please enter your pin number"
#read PIN_NUMBER #PIN_NUMBER IS A VARIABLE --> it will show pin number while entering

read -s PIN_NUMBER #PIN_NUMBER IS A VARIABLE --> it will not show pin number while entering

echo "PIN entered is : $PIN_NUMBER"