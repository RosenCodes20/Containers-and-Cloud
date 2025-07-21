docker build -t rosenbg1234/trackerapp .
docker push rosenbg1234/trackerapp
docker run -dit -p 8080:80 --name trackerapp rosenbg1234/trackerapp:latest