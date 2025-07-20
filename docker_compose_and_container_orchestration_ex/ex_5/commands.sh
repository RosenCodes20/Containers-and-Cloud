docker build -t frontend .
docker network create react_express
docker network create express_mongo
docker run -dit -p 3000:3000 --network react_express --name frontend -v /Users/macbookpro16/Vs_code/Containers-and-Cloud/docker_compose_and_container_orchestration_ex/ex_5/04.TODO-App/data:/data/db frontend:latest
docker build -t backend_image .
docker run -dit --network react_express --name backend -v /Users/macbookpro16/Vs_code/Containers-and-Cloud/docker_compose_and_container_orchestration_ex/ex_5/04.TODO-App/data:/data/db backend_image:latest # returns 44 as first letters of id
docker network connect express_mongo 44 # connect one container to two networks
docker run -dit --name mongo --network express_mongo -v /Users/macbookpro16/Vs_code/Containers-and-Cloud/docker_compose_and_container_orchestration_ex/ex_5/04.TODO-App/data:/data/db mongo:latest
