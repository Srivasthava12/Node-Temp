default: build

dc-build:
	docker-compose build app

# ---------- Development ----------
start: dc-build
	docker-compose run --service-ports app run start

sh: dc-build
	docker-compose run --entrypoint=sh app

# ---------- Testing ----------
test: dc-build
	docker-compose run  app run test

build:
	docker build -t srivasthava/nodetemp_app:v1 .


# ----------Push it to DockerHub ----------

push:
	docker push srivasthava/nodetemp_app:v1