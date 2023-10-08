#!/bin/bash

# Actualiza la lista de paquetes
sudo apt-get update

# Instala el servidor MySQL
yes | sudo apt-get install mysql-server

# Verifica si MySQL está activo
systemctl is-active mysql

# Configura MySQL de forma segura
sudo mysql_secure_installation <<EOF
Y
123
Y
Y
Y
Y
EOF

# Cambia la autenticación de root a mysql_native_password
sudo mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';
FLUSH PRIVILEGES;
EOF

# Instala MySQL Workbench
sudo snap install mysql-workbench-community
