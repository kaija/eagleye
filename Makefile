REGISTRY=""
IMAGE=eagleye
TAG=latest

all: build
build:
	docker build -t ${IMAGE}:${TAG} -f Dockerfile .

run:
	docker run --name test -p 8888:80 ${IMAGE}:${TAG}

stop:
	docker rm test
