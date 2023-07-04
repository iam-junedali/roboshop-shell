echo -e "\e[31m This prints in Red colour\e[0m"
yum install nginx -y

echo -e "\e[32m This prints in Green colour\e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[33m This prints in Yellow colour\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
echo -e "\e[34m This prints in Blue colour\e[0m"
unzip /tmp/frontend.zip

echo -e "\e[35m This prints in Magenta colour\e[0m"
systemctl enable nginx

echo -e "\e[36m This prints in Cyan colour\e[0m"
systemctl restart nginx