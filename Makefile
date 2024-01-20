.PHONY: build bash server

build:
	docker compose build
	docker compose run --rm jekyll yarn

bash:
	docker compose run --rm jekyll bash

server:
	docker compose run --service-ports --rm jekyll foreman start

