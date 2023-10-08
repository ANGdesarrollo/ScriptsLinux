sudo apt-get update
sudo apt-get install mysql-server
systemctl is-active mysql
sudo mysql_secure_installation
sudo mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';
FLUSH PRIVILEGES;
EOF
sudo snap install mysql-workbench-community
