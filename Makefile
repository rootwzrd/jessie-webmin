IMAGE_NAME := youske/jessie-webmin

build: Dockerfile
	docker build --file Dockerfile -t ${IMAGE_NAME} .
