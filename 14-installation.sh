#!/bin/bash

#Steps
#S1:To check the user has root access or not, if yes then proceed otherwise ask them to run the same with root user
#S2:install the software
#S3:check exit status[for root user: id -u will be 0, for normal user there will be some value like 1001], if 0 success/proceed, otherwise Failure/stop

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:: run this script with root user access/previlige $N"
    exit 1 #failur is other than 0
fi

#For repeated code we are using this
#when code execution starts from top it wont execute automatically, someone should call them

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo -e "$R ERROR:: installing $2 is FAILURE $N"
    exit 2 #failur is other than 0
else
    echo -e "$G Installing $2 is SUCCESS $N"
 #here it will automatically consider 0 as exit code
fi

}

dnf install mysql -y    
VALIDATE $? "MYSQL"


dnf install nginx -y
VALIDATE $? "NGINX"


dnf install python3 -y
VALIDATE $? "python3"