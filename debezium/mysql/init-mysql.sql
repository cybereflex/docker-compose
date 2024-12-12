CREATE USER 'debezium'@'%' IDENTIFIED BY 'debezium';

GRANT 
  SELECT, 
  RELOAD, 
  SHOW DATABASES, 
  REPLICATION SLAVE, 
  REPLICATION CLIENT, 
  REPLICATION_APPLIER, 
  LOCK TABLES
ON *.* TO 'debezium'@'%';

FLUSH PRIVILEGES;

USE example;

CREATE TABLE products (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(512),
  weight FLOAT
) AUTO_INCREMENT=101;

INSERT INTO products
VALUES (default,"scooter","Small 2-wheel scooter",3.14),
       (default,"car battery","12V car battery",8.1),
       (default,"12-pack drill bits","12-pack of drill bits with sizes ranging from #40 to #3",0.8),
       (default,"hammer","12oz carpenter's hammer",0.75),
       (default,"hammer","14oz carpenter's hammer",0.875),
       (default,"hammer","16oz carpenter's hammer",1.0),
       (default,"rocks","box of assorted rocks",5.3),
       (default,"jacket","water resistent black wind breaker",0.1),
       (default,"spare tire","24 inch spare tire",22.2);

CREATE TABLE customers (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE KEY
) AUTO_INCREMENT=1001;

INSERT INTO customers
VALUES (default,"Sally","Thomas","sally.thomas@acme.com"),
       (default,"George","Bailey","gbailey@foobar.com"),
       (default,"Edward","Walker","ed@walker.com"),
       (default,"Anne","Kretchmar","annek@noanswer.org");

CREATE TABLE orders (
  order_number INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_date DATE NOT NULL,
  purchaser INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  FOREIGN KEY order_customer (purchaser) REFERENCES customers(id),
  FOREIGN KEY ordered_product (product_id) REFERENCES products(id)
) AUTO_INCREMENT = 10001;

INSERT INTO orders
VALUES (default, '2016-01-16', 1001, 1, 102),
       (default, '2016-01-17', 1002, 2, 105),
       (default, '2016-02-19', 1002, 2, 106),
       (default, '2016-02-21', 1003, 1, 107);

CREATE TABLE geom (
        id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
        g GEOMETRY NOT NULL,
        h GEOMETRY);

INSERT INTO geom
VALUES(default, ST_GeomFromText('POINT(1 1)'), NULL),
      (default, ST_GeomFromText('LINESTRING(2 1, 6 6)'), NULL),
      (default, ST_GeomFromText('POLYGON((0 5, 2 5, 2 7, 0 7, 0 5))'), NULL);

