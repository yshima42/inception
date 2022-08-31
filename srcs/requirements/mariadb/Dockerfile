FROM debian:buster
RUN apt-get update && apt-get install -y \
	mariadb-server \
	vim

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/sqlcreate.sh /usr/local/bin

RUN bash /usr/local/bin/sqlcreate.sh

RUN cat dbcreate.sql

RUN echo ${MYSQL_DATABASE}

RUN service mysql start && mysql < dbcreate.sql && rm -f dbcreate.sql sqlcreate.sh

CMD ["mysqld_safe"]
