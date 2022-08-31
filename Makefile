COMPOSE_PATH=./srcs/docker-compose.yml

all: build up

build:
	docker compose -f $(COMPOSE_PATH) build

up:
	docker compose -f $(COMPOSE_PATH) up

down:
	docker compose -f $(COMPOSE_PATH) down

re:
	docker compose -f $(COMPOSE_PATH) up --build

clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q);

nginx:
	docker build -t unit_nginx ./srcs/requirements/nginx/
	docker run -it --rm unit_nginx bash

wordpress:
	docker build -t unit_wordpress ./srcs/requirements/wordpress/
	docker run -it --rm unit_wordpress bash

.PHONY: setup
setup:
	sudo mkdir -p /home/yshimazu/data/mariadb
	sudo mkdir -p /home/yshimazu/data/wordpress
	grep '127.0.0.1 yshimazu.42.fr' /etc/hosts > /dev/null || sudo -- sh -c "echo '127.0.0.1 yshimazu.42.fr' >> /etc/hosts"


.PHONY: all down re clean
