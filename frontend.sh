script_location=$(pwd)
PWD
exit

yum install nginx -y

systemctl start nginx
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

cp ${script_location}/files/nginx-mfrm.config /etc/nginx/default.d/roboshop.conf

systemctl enable nginx
systemctl restart nginx