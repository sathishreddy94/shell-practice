#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 ) 
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

echo "script started execution at : $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:: run this script with root user access/previlige $N" | tee -a $LOG_FILE
    exit 1 #failur is other than 0
fi

VALIDATE(){
if [ $1 -ne 0 ]; then
    echo -e "$R ERROR:: installing $2 is FAILURE $N" | tee -a $LOG_FILE
    exit 2 #failur is other than 0
else
    echo -e "$G Installing $2 is SUCCESS $N" | tee -a $LOG_FILE
 #here it will automatically consider 0 as exit code
fi

}

##To acess script variables

for package in $@

do
    #check package is already installed or not
    dnf list installed $package &>>$LOG_FILE

    #if exit status is 0, already installed, -ne 0 need to install
    if [ $? -ne 0 ]; then

    dnf install $package -y &>>$LOG_FILE
    VALIDATE $? "$package"

    else
        echo -e "$package already installed ...$Y SKIPPING $N"
    fi

done