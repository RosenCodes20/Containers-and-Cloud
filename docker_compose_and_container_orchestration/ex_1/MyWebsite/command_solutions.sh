docker login
docker image build -t vue_app_image .
docker tag vue_app_image rosenbg1234/vue_app_image:latest
docker push rosenbg1234/vue_app_image:latest
docker run -d -p 8080:8084 --name vue_container_by_me rosenbg1234/vue_app_image:latest