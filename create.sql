CREATE DATABASE razors;
USE razors;

SET SQL_MODE="EMPTY_STRING_IS_NULL,STRICT_TRANS_TABLES";

CREATE TABLE data (
  id tinyint(3) NOT NULL AUTO_INCREMENT,
  handle BOOL NOT NULL,
  quantity tinyint(1) NOT NULL,
  cost DECIMAL(5,2) NOT NULL,
  razorCost DECIMAL(3,1),
  url tinytext NOT NULL,
  key id (id)
);

LOAD DATA LOCAL INFILE '/home/seirra/Documents/sql/razor/data.csv'
INTO TABLE data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

UPDATE data SET razorCost = cost / quantity;

SELECT * from data ORDER BY razorCost;