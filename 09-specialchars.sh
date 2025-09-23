#!/bin/bash

echo "All variables passed to this script: $@"

echo "All variables passed to this script: $*"

echo "script name : $0"

echo "Present working directory :: $PWD"

echo "who is running this :: $USER"


echo "user home directory :: $HOME"

echo "PID Of the script :: $$"

sleep 50 &

echo "PID Of the last command executed in background :: $!"
