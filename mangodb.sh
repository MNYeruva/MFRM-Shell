script_location=$(pwd)

cp ${script_location}/files/mangodb.repo /etc/yum.repos.d/mangodb.repo

yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod


