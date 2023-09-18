cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod

