curl -sL https://rpm.nodesource.com/setup_lts.x | bash &>>/tmp/roboshop.log

dnf install nodejs -y &>>/tmp/roboshop.log

useradd roboshop

mkdir /app

curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip &>>/tmp/roboshop.log
cd /app
unzip /tmp/catalogue.zip &>>/tmp/roboshop.log

cd /app
npm install &>>/tmp/roboshop.log

cp catalogue.service /etc/systemd/system/catalogue.service

systemctl daemon-reload

systemctl enable catalogue
systemctl start catalogue

cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

dnf install mongodb-org-shell -y &>>/tmp/roboshop.log

mongo --host mongodb-dev.joyousgroups.com </app/schema/catalogue.js

