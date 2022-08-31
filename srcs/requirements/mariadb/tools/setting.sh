#!/bin/sh

mysql_install_db --user=mysql
mysqld -u mysql --bootstrap << EOF
	CREATE DATABASE ${MYSQL_DATABASE};
	CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
	GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';
	SET PASSWORD FOR root@localhost=PASSWORD('${MYSQL_ROOT_PASSWORD}');
	FLUSH PRIVILEGES;
EOF

mysqld_safe
