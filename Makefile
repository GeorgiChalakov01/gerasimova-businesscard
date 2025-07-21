IMAGE_NAME := gerasimova-web
TAG := latest

.PHONY: build run stop clean

build:
	docker buildx build -t $(IMAGE_NAME):$(TAG) .

run:
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker rmi $(IMAGE_NAME):$(TAG)
