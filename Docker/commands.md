# Docker commands

- Build Docker image
```bash
docker build . -t <Docker image name>
docker build . -t <Docker image name> -f <Dockerfile name>
docker build . -t <Docker image name> -f <Dockerfile name> --build-arg arg1=value1
docker build . -t <Docker image name> -f <Dockerfile name> --build-arg arg1=value1 --build-arg arg2=value2
```

- Run Docker container
```bash
docker run -p 3000:3000 --name <Docker container name> -d <Docker image name>
docker run -p 3000:3000 --name <Docker container name> -d <Docker image name> --env-file web/.env 
```

- Docker compose
```bash
docker compose up
docker compose up --build
docker compose down
docker compose run -d app rails db:migrate
docker compose run -d app rails db:seed
```

- Other commands
```bash
docker sbom
docker ps
docker exec -it [CONTAINER ID] bash
docker inspect [CONTAINER ID] | grep -i "IPAddress"
```