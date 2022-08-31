#!/bin/sh
echo "
CREATE DATABASE ${MYSQL_DATABASE};
CREATE USER 'yshimazu'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO 'yshimazu'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
" > /dbcreate.sql
