/*
Populates Database Table
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
*/

/* Load Comment to Answer Table */
LOAD DATA LOCAL INFILE '/data/subgraph/c2a_2.csv'
INTO TABLE c2a
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Comment to Question Table */
LOAD DATA LOCAL INFILE '/data/subgraph/c2q_2.csv'
INTO TABLE c2q
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Answer to Question Table */
LOAD DATA LOCAL INFILE '/data/subgraph/a2q_2.csv'
INTO TABLE a2q
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';
