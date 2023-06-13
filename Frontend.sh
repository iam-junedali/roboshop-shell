echo -e "\e[31mInstalling Nginx Server\-e[0m"
yum install nginx -y

echo -e "\e[32mRemoving Default Content from Nginx Server\-e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[33mInstalling Frontend Content\-e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

echo -e "\e[34munzip the Frontend content\-e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

echo -e "\e[35mEnable Nginx Server\-e[0m"
systemctl enable nginx

echo -e "\e[35mRestart Nginx Server\-e[0m"
systemctl restart nginx
