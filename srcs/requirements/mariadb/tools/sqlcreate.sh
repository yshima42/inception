echo "
CREATE DATABASE wordpress;
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
" > dbcreate.sql
