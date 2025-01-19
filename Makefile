.DEFAULT_GOAL := run_container

HOST_PORT ?= 8888
CONTAINER_PORT ?= 8000
IMAGE ?= squidfunk/mkdocs-material
PROJECT_DIR ?= $(dir $(realpath $(lastword $(MAKEFILE_LIST))))

.PHONY: run_container
run_container:
	@echo Serving site on: http://0.0.0.0:${HOST_PORT}/
	docker run --rm -it -p ${HOST_PORT}:${CONTAINER_PORT} -v ${PROJECT_DIR}:/docs ${IMAGE}
