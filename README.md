# ui

Core WebUI module for data-stack application

## How to run

Prerequirements:

* Setup docker and docker-compose
* Docker Compose must be version 1.6.0 or higher
* Docker Engine must be version 1.10.0 or higher

Command:

* `docker-compose up`
* Open `localhost:8080`
* Press `Ctrl+C` to stop container

## How to run custom command

You can run only UI container to run eslint, tests or other NPM script.

* `docker-compose run --rm --no-deps ui bash`
* Write `exit` to exit and stop container

## How to rebuild docker container

Just change image tag in `docker-compose.yml` for ui service. So it will automatically rebuild container when you run current service.
