// Load and Populate Data from CSV File
// Author: Yuya Jeremy Ong (yjo5006@psu.edu)

PERIODIC COMMIT 500
LOAD CSV FROM 'file:///sx-stackoverflow-c2a.csv' AS row
MERGE (u1 { user: toInteger(row[1]) })
MERGE (u2 { user: toInteger(row[2]) })
MERGE (u1)-[:c2a { ts: row[3] }]->(u2)

PERIODIC COMMIT 500
LOAD CSV FROM 'file:///sx-stackoverflow-c2q.csv' AS row
MERGE (u1 { user: toInteger(row[1]) })
MERGE (u2 { user: toInteger(row[2]) })
MERGE (u1)-[:c2q { ts: row[3] }]->(u2)

PERIODIC COMMIT 500
LOAD CSV FROM 'file:///sx-stackoverflow-a2q.csv' AS row
MERGE (u1 { user: toInteger(row[1]) })
MERGE (u2 { user: toInteger(row[2]) })
MERGE (u1)-[:a2q { ts: row[3] }]->(u2)
