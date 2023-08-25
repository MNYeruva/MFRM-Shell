script_location=$(pwd)

cp ${script_location}/files/mangodb.repo /etc/yum.repos.d/mangodb.repo

yum install mongodb-org -y


systemctl start mongod

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable mongod
systemctl restart mongod

