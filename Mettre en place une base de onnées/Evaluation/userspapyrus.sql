CREATE USER 'user1'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'user2'@'localhost' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON papyrus.* TO 'user1'@'localhost';
GRANT SELECT ON papyrus.*  TO 'user2'@'localhost';


DROP USER 'user1'@'localhost';
DROP USER 'user2'@'localhost';
