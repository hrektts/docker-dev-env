all: build

build:
	@docker build --tag=hrektts/dev-env:latest .

base:
	@docker pull hrektts/ubuntu:latest

rebuild: base
	@docker build --tag=hrektts/dev-env:latest .

release: rebuild
	@docker build --tag=hrektts/dev-env:$(shell date +%Y%m%d) .
