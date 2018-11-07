/*
Populates Database Table
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
*/

/* Load Comment to Answer Table */
LOAD DATA INFILE '../../data/raw/sx-stackoverflow-c2a.txt'
INTO TABLE c2a
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Comment to Question Table */
LOAD DATA INFILE '../../data/raw/sx-stackoverflow-c2q.txt'
INTO TABLE c2q
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Answer to Question Table */
LOAD DATA INFILE '../../data/raw/sx-stackoverflow-a2q.txt'
INTO TABLE a2q
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';
