#!/bin/bash

wp core is-installed --allow-root 2> /dev/null
if [ $? -ne 0 ]; then
	wp core download --allow-root

	while ! mysql -h mariadb -P 3306 -u ${MYSQL_USER} -p${MYSQL_PASSWORD} 2> /dev/null; do
		sleep 1
	done

	wp config create --allow-root \
		--dbname=${MYSQL_DATABASE} \
		--dbuser=${MYSQL_USER} \
		--dbpass=${MYSQL_PASSWORD} \
		--dbhost=${MYSQL_HOSTNAME}

	wp core install --allow-root \
		--url=${DOMAIN_NAME} \
		--title=${TITLE} \
		--admin_user=${WP_ADMIN} \
		--admin_email=${WP_ADMIN_EMAIL} \
		--admin_password=${WP_ADMIN_PASSWORD}

	wp user create --allow-root \
		${WP_USER} \
		${WP_USER_EMAIL} \
		--user_pass=${WP_USER_PASSWORD} \
		--role=author
	
	chown -R www-data:www-data *
	chmod -R 755 /var/www/*

fi

#bash /usr/sbin/php-fpm7.3 -F
echo "done"
php-fpm7.3 -F
