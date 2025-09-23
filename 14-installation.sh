#!/bin/bash

#Steps
#S1:To check the user has root access or not, if yes then proceed otherwise ask them to run the same with root user
#S2:install the software
#S3:check exit status[for root user: id -u will be 0, for normal user there will be some value like 1001], if 0 success/proceed, otherwise Failure/stop

USERID=$(id -u)

if[ $USERID -ne 0 ]; then
    echo "ERROR:: run this script with root user access/previlige"

fi

dnf install mysql -d

if[ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is FAILURE"


else
 echo "ERROR:: installing mysql is SUCCESS"
fi