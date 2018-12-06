/*
 * DS220 MySQL Queries
 * Author: Yuya Jeremy Ong (yjo5006@psu.edu)
 */

/* Select Database to Utilize */
use ds497;

/* Query 1 */
SELECT * FROM a2q WHERE source = 123 OR target = 123;

/* Query 2 */
SELECT * FROM c2q WHERE (source = 2199 AND target = 598740) OR (source = 598740 AND target = 2199);

/* Query 3 */
SELECT source, COUNT(*) AS count FROM a2q GROUP BY source ORDER BY count DESC limit 1;

/* Query 4 */
SELECT S.source, (S.SCNT / T.TCNT) AS C2Q_RATIO FROM (SELECT source, COUNT(*) AS SCNT FROM c2q GROUP BY source) AS S INNER JOIN (SELECT target, COUNT(*) AS TCNT FROM c2q GROUP BY target) AS T ON S.source = T.target;

/* Query 5 */
SELECT Q.N_v / (Q.K_v * (Q.K_v - 1)) AS CC FROM (SELECT COUNT(*) AS K_v, (SELECT COUNT(*) FROM (SELECT DISTINCT source, target FROM a2q WHERE (source IN (SELECT DISTINCT source FROM a2q WHERE target = 22656) AND target IN (SELECT DISTINCT source FROM a2q WHERE target = 22656)) AND source != target) AS TMP_B) AS N_v FROM (SELECT DISTINCT source FROM a2q WHERE target = 22656) AS TMP_A) AS Q;

/* Query 6 */
SELECT DISTINCT COUNT(*) FROM ((SELECT DISTINCT target FROM a2q WHERE source = 17034 AND (target != source)) UNION ALL (SELECT DISTINCT source FROM a2q WHERE target = 17034 AND (target != source))) AS U1 INNER JOIN ((SELECT DISTINCT target FROM a2q WHERE source = 22656 AND (target != source)) UNION ALL (SELECT DISTINCT source FROM a2q WHERE target = 22656 AND (target != source))) AS U2;
