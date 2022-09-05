COMPOSE_PATH=./srcs/docker-compose.yml

.PHONY: all
all: build up

.PHONY: build
build:
	docker compose -f $(COMPOSE_PATH) build

.PHONY: up
up:
	docker compose -f $(COMPOSE_PATH) up

.PHONY: down
down:
	docker compose -f $(COMPOSE_PATH) down

.PHONY: re
re:
	docker compose -f $(COMPOSE_PATH) up --build

.PHONY: review
review:
	docker stop `docker ps -qa`;
	docker rm `docker ps -qa`;
	docker rmi -f `docker images -qa`;
	docker volume rm `docker volume ls -q`;
	docker network rm `docker network ls -q` 2>/dev/null

.PHONY: clean
clean:
	sudo rm -rf /home/yshimazu
	grep '127.0.0.1 yshimazu.42.fr' /etc/hosts > /dev/null && sudo -- sh -c "sed -i /'128.0.0.1 yshimazu.42.fr'/d /etc/hosts"
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker system prune

.PHONY: setup
setup:
	sudo mkdir -p /home/yshimazu/data/mariadb
	sudo mkdir -p /home/yshimazu/data/wordpress
	grep '127.0.0.1 yshimazu.42.fr' /etc/hosts > /dev/null || sudo -- sh -c "echo '127.0.0.1 yshimazu.42.fr' >> /etc/hosts"

