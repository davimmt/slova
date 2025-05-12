IMAGE_NAME = slovo
PORT = 4321
.PHONY: help build run stop shell clean

help:
	@echo "Comandos disponíveis:"
	@echo "  make build    - Build docker image"
	@echo "  make run      - Run container for development"
	@echo "  make stop     - Stop container"
	@echo "  make shell    - Access interative shell"
	@echo "  make clean    - Remove docker image"
	@echo "  make help     - Exibe esta mensagem"

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -d --rm --name $(IMAGE_NAME) -p $(PORT):4321 -v $(PWD)/:/app $(IMAGE_NAME)

stop:
	docker stop $(IMAGE_NAME)

shell:
	docker exec -it $(IMAGE_NAME) sh

clean:
	docker rmi $(IMAGE_NAME)
