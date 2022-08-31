FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.3 \
	php-mysqli \
	php-fpm \
	wget \
	curl \
	vim \
	mariadb-client \
	sendmail

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

ADD https://wordpress.org/wordpress-5.7.2.tar.gz /var/www/
RUN cd /var/www && tar -xzvf wordpress-5.7.2.tar.gz
RUN rm -f /var/www/wordpress-5.7.2.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php

COPY ./conf/wp-config.php ./var/www/wordpress/

#WORKDIR /var/www/localhost/
#
#RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
#	&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp \
#	&& mkdir -p /var/www/localhost/wordpress
#
#RUN mkdir -p /var/run/php/ \
#	&& mkdir -p /var/log/php/ \
#	&& touch /var/log/php/access.log \
#	&& touch /var/log/php/error.log

RUN mkdir ./run/php/

CMD ./usr/sbin/php-fpm7.3 -F
