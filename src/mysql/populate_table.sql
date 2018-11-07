/*
Populates Database Table
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
*/

/* Load Comment to Answer Table */
LOAD DATA INFILE '../../data/csv/sx-stackoverflow-c2a.csv'
INTO TABLE c2a (@dummy, source, target, timestamp)
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Comment to Question Table */
LOAD DATA INFILE '../../data/csv/sx-stackoverflow-c2q.csv'
INTO TABLE c2q (@dummy, source, target, timestamp)
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';

/* Load Answer to Question Table */
LOAD DATA INFILE '../../data/csv/sx-stackoverflow-a2q.csv'
INTO TABLE a2q (@dummy, source, target, timestamp)
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n';
