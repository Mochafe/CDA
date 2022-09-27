USE papyrus;

INSERT INTO fournis(numfou, nomfou, ruefou, posfou, vilfou, confou) VALUES ("ABC", "Restaurant de patate", "37 rue de l'église", "01250", "Torpe", "Dave Loper");

INSERT INTO produit(codart, libart, stkale, stkphy, qteann, unimes) VALUES ("ABCD", "Patate", 100, 800, 10000, "KG");

INSERT INTO entcom(datcom, foucom) VALUES ("2022-03-20", "ABC");

INSERT INTO ligcom(numlig, qtecde, priuni, derliv, numcom, codart) VALUES (1, 300, "1,81€", "2022-03-23", 1, "ABCD");
