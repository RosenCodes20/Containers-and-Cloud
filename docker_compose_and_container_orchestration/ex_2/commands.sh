docker network create my_network
docker network ls # my_network should be here!!
docker run -dit --name wordpress_db -e MYSQL_ROOT_PASSWORD=pass -e MYSQL_DATABASE=wordpressdb -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=wordpress --expose 3306 --expose 33060 --network my_network -v /Users/macbookpro16/Vs_code/volume:/var/lib/mysql mysql
docker network inspect my_network # the container should be there, if not problem!!
docker run -dit --name wordpress-website -e WORDPRESS_DB_HOST=wordpress_db -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=wordpress -e WORDPRESS_DB_NAME=wordpressdb -p 80:80 -v /Users/macbookpro16/Vs_code/volume_wordpress:/var/www/html --network my_network wordpress