FROM debian:buster
RUN apt-get update && apt-get install -y \
	mariadb-server \
	vim
EXPOSE 3306

COPY ./tools/dbcreate.sql /
# RUN service mysql start && mysql < /dbcreate.sql && rm -f /dbcreate.sql

CMD ["bash"]
