all: build

build:
	@docker build --tag=${USER}/dev-env:latest .

base:
	@docker pull hrektts/ubuntu:latest

rebuild: base
	@docker build --tag=${USER}/dev-env:latest .

release: rebuild
	@docker build --tag=${USER}/dev-env:$(shell date +%Y%m%d) .
