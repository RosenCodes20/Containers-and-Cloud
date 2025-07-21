docker network create mariadb_network
docker run --name mariadb_server --network mariadb_network -e MYSQL_ROOT_PASSWORD=rootpassword -e MYSQL_DATABASE=mydatabase -e MYSQL_USER=myuser -e MYSQL_PASSWORD=mypassword -d mariadb
docker run --name mariadb_client --network mariadb_network -dit mariadb bash #f9bcf9fba55fc84186c980ebf7d3768254f2b376d54d98153956ca6f1ce43dd7

#if not mysql on computer
apt/apk update
apt/apk install -y default-mysql-client

# Then do this:
mysql -h mariadb_server -u myuser -p

#It will ask for password we written upper, the password is mypassword, write it and do sql queries
#For example:
SHOW DATABASES;
USE mydatabase;
CREATE TABLE test_table (id INT, name VARCHAR(100));
INSERT INTO test_table (id, name) VALUES (1, 'Test Name');
INSERT INTO test_table (id, name) Values (2, "Rosen");
SELECT * FROM test_table;