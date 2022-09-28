USE papyrus;

#Insertion produits
INSERT INTO produit (codart, libart, stkale, stkphy, qteann, unimes) VALUES ("AAAA", "Papier A", 2000, 5000, 23000, "unité");
INSERT INTO produit (codart, libart, stkale, stkphy, qteann, unimes) VALUES ("AAAB", "Papier B", 500, 1250, 12000, "unité");
INSERT INTO produit (codart, libart, stkale, stkphy, qteann, unimes) VALUES ("AAAC", "Papier C", 5000, 2350, 72400, "unité");

#Insertion fournis
INSERT INTO fournis (numfou, nomfou, ruefou, posfou, vilfou, confou, satisf) VALUES ("AZERTY", "Entreprise 1", "Rue A", "00000", "Ville A", "Personne A", 5);
INSERT INTO fournis (numfou, nomfou, ruefou, posfou, vilfou, confou, satisf) VALUES ("QWERTY", "Entreprise 2", "Rue B", "00001", "Ville B", "Personne B", 4);
INSERT INTO fournis (numfou, nomfou, ruefou, posfou, vilfou, confou, satisf) VALUES ("BEPO", "Entreprise 3", "Rue C", "00002", "Ville C", "Personne C", 6);

#Insertion vente

INSERT INTO vente (delliv, qte1, prix1, qte2, prix2, qte3, prix3, numfou, codart) VALUES (5, 10, 70, 15, 80, 60, 70, "AZERTY", "AAAA");
INSERT INTO vente (delliv, qte1, prix1, numfou, codart) VALUES (3, 19, 77, "QWERTY", "AAAB");
INSERT INTO vente (delliv, qte1, prix1, qte2, prix2, numfou, codart) VALUES (12, 13, 55, 15, 40, "BEPO", "AAAC");

#Insertion entcom
INSERT INTO entcom (foucom) VALUES ("AZERTY");
INSERT INTO entcom (foucom) VALUES ("QWERTY");
INSERT INTO entcom (foucom) VALUES ("BEPO");

#Insertion ligcom
INSERT INTO ligcom (numlig, qtecde, priuni, qteliv, derliv, numcom, codart) VALUES (1, 80, 12, 12, NOW() + INTERVAL 5 DAY, 1, "AAAA");
INSERT INTO ligcom (numlig, qtecde, priuni, qteliv, derliv, numcom, codart) VALUES (2, 120, 8, 118, NOW() + INTERVAL 3 DAY, 2, "AAAB");
INSERT INTO ligcom (numlig, qtecde, priuni, qteliv, derliv, numcom, codart) VALUES (3, 40, 26, 42, NOW() + INTERVAL 12 DAY, 3, "AAAC");
