#!/bin/bash

#Steps
#S1:To check the user has root access or not, if yes then proceed otherwise ask them to run the same with root user
#S2:install the software
#S3:check exit status[for root user: id -u will be 0, for normal user there will be some value like 1001], if 0 success/proceed, otherwise Failure/stop

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: run this script with root user access/previlige"
    exit 1 #failur is other than 0
fi

#For repeated code we are using this
#when code execution starts from top it wont execute automatically, someone should call them

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "ERROR:: installing $2 is FAILURE"
    exit 2 #failur is other than 0
else
    echo "ERROR:: installing $2 is SUCCESS"
 #here it will automatically consider 0 as exit code
fi

}

dnf install mysql -y    
VALIDATE $? "MYSQL"


dnf install nginx -y
VALIDATE $? "NGINX"


dnf install mongodb-mongosh -y
VALIDATE $? "mongosh"