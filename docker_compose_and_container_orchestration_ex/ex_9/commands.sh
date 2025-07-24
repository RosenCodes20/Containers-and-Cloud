docker build -t simpleapp .
## IF YOU WANT WITHOUT DOCKER COMPOSE
docker run -d --name web -p 8000:8000 -v /Users/macbookpro16/Vs_code/Containers-and-Cloud/docker_compose_and_container_orchestration_ex/ex_9/data:/app/staticfiles -e DEBUG=False simpleapp:latest

# IF YOU WANT WITH DOCKER COMPOSE
docker compose build
docker compose up

# AND AFTER THAT GO WATCH A MOVIE :)