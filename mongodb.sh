cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

dnf install mongodb-org -y &>>/tmp/roboshop.log

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf &>>/tmp/roboshop.log

systemctl enable mongod &>>/tmp/roboshop.log
systemctl start mongod &>>/tmp/roboshop.log

