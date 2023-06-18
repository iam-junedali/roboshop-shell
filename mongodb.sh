echo -e "\e[31m Copy mongodb.repo file \ -e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

echo -e "\e[31m Install Mongodb \ -e[0m"
yum install mongodb-org -y &>>/tmp/roboshop.log

echo -e "\e[31m Restart Mongodb \ -e[0m"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log