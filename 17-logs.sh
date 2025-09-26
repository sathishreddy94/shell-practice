#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 ) 
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

mkdir -p $LOGS_FOLDER

echo "script started execution at : $(date)"

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:: run this script with root user access/previlige $N"
    exit 1 #failur is other than 0
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo -e "$R ERROR:: installing $2 is FAILURE $N"
    exit 2 #failur is other than 0
else
    echo -e "$G Installing $2 is SUCCESS $N"
 #here it will automatically consider 0 as exit code
fi

}

dnf list installed mysql &>>LOG_FILE
#install if it is not found

if [ $? -ne 0 ]; then
    dnf install mysql -y &>>LOG_FILE   
    VALIDATE $? "MYSQL"
else
    echo -e "MYSQL is already exist ....... $Y SKIPPING $N"
fi

dnf list installed nginx &>>LOG_FILE
#install if it is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>LOG_FILE
    VALIDATE $? "NGINX"
else
    echo -e "NGINX is already exist ....... $Y SKIPPING $N"
fi

dnf list installed python3 &>>LOG_FILE
#install if it is not found
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "PYTHON3 is already exist ....... $Y SKIPPING $N"
fi