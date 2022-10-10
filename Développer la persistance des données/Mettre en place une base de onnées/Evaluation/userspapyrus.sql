
CREATE USER 'user1'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'user2'@'localhost' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON papyrus.* TO 'user1'@'localhost';
GRANT SELECT ON papyrus.*  TO 'user2'@'localhost';


DROP USER IF EXISTS 'user1'@'localhost';
DROP USER IF EXISTS 'user2'@'localhost';
