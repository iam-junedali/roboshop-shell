yum install nginx -y

rm -rf /usr/share/nginx/html/*

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip >>/tmp/roboshop.log

cd /usr/share/nginx/html
unzip /tmp/frontend.zip >>/tmp/roboshop.log

systemctl enable nginx >>/tmp/roboshop.log

systemctl restart nginx >>/tmp/roboshop.log