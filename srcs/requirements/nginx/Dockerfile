FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx \
	openssl \
	vim 

RUN openssl req -x509 \
                -nodes \
                -days 10 \
                -newkey rsa:2048 \
                -keyout /etc/ssl/private/nginx.key \
                -out /etc/ssl/certs/nginx.crt \
                -subj "/C=JP/ST=Tokyo/L=Setagaya/O=42Tokyo/OU=learner/CN=https:\/\/github.com\/yshima42/emailAddress=yshimazu@student.42tokyo.jp"

COPY ./conf/default.conf etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
