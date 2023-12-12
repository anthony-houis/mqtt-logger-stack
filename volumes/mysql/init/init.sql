CREATE USER IF NOT EXISTS'ReadOnlyUser'@'%' IDENTIFIED BY 'ReadOnlyPassword';
GRANT ALL PRIVILEGES ON *.* TO 'ReadOnlyUser'@'%';
FLUSH PRIVILEGES;

CREATE SCHEMA IF NOT EXISTS `collector`;

CREATE TABLE IF NOT EXISTS `collector`.`client1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hr_in` INT NOT NULL,
  `SNR` FLOAT NOT NULL,
  `RSSI` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `collector`.`limiteMax` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `limiteMax` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `collector`.`limiteMin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `limiteMin` INT NOT NULL,
  PRIMARY KEY (`id`));

use collector;

INSERT INTO limiteMax (limiteMax) VALUES (220);
INSERT INTO limiteMin (limiteMin) VALUES (0);
