/*
Create Dataset Partition
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
*/

/* Create New Subset Tables */

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

/* Define Table Structure */
CREATE TABLE `a2q_25` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `a2q_50` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `a2q_75` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2a_25` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2a_50` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2a_75` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2q_25` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2q_50` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `c2q_75` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Initialize Primary Keys */
ALTER TABLE `a2q_25`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `a2q_50`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `a2q_75`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2a_25`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2a_50`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2a_75`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2q_25`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2q_50`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `c2q_75`
  ADD PRIMARY KEY (`id`);

/* Auto Increment IDs */
ALTER TABLE `a2q_25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `a2q_50`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `a2q_75`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2a_25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2a_50`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2a_75`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2q_25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2q_50`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `c2q_75`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* Populate Each Table Correspondingly */
SELECT * INTO `a2q_25` FROM `a2q` ORDER BY timestamp asc LIMIT 4455881;
SELECT * INTO `a2q_50` FROM `a2q` ORDER BY timestamp asc LIMIT 8911762;
SELECT * INTO `a2q_75` FROM `a2q` ORDER BY timestamp asc LIMIT 13367643;

SELECT * INTO `c2a_25` FROM `c2a` ORDER BY timestamp asc LIMIT 5067037;
SELECT * INTO `c2a_50` FROM `c2a` ORDER BY timestamp asc LIMIT 10134074;
SELECT * INTO `c2a_75` FROM `c2a` ORDER BY timestamp asc LIMIT 15201111;

SELECT * INTO `c2q_25` FROM `c2q` ORDER BY timestamp asc LIMIT 6351343;
SELECT * INTO `c2q_50` FROM `c2q` ORDER BY timestamp asc LIMIT 12702686;
SELECT * INTO `c2q_75` FROM `c2q` ORDER BY timestamp asc LIMIT 19054029;
