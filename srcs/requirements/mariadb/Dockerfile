FROM debian:buster

RUN apt-get update && apt-get install -y \
	mariadb-server \
	vim

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/setting.sh /usr/local/bin

ENTRYPOINT ["bash", "/usr/local/bin/setting.sh"]
