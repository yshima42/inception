FROM debian:buster

RUN apt-get update && apt-get install -y \
	php7.3 \
	php-mysqli \
	php-fpm \
	wget \
	curl \
	vim \
	sendmail

EXPOSE 9000

CMD bash
