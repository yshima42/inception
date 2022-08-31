FROM debian:buster
RUN apt-get update && apt-get install -y \
	mariadb-server \
	vim

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/sqlcreate.sh /

RUN bash sqlcreate.sh

RUN service mysql start && mysql < dbcreate.sql && rm -f dbcreate.sql sqlcreate.sh

CMD ["mysqld_safe"]
