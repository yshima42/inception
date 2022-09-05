FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.3 \
	php-mysqli \
	php-fpm \
	wget \
	curl \
	vim \
	mariadb-client 
	#本番環境にはsendmailを入れる必要あり
	#今回はネットに繋がっておらず、この部分で止まってしまう機能があるため削除
	#sendmail

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./tools/setting.sh /usr/local/bin

WORKDIR /var/www/wordpress/

ENTRYPOINT ["bash", "/usr/local/bin/setting.sh"]
