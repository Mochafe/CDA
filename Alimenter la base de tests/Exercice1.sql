USE Exercice2;

#Ajout stations
INSERT INTO Station (nom_station) VALUES ("Liège");
INSERT INTO Station (nom_station) VALUES ("Paris");
INSERT INTO Station (nom_station) VALUES ("Londres");


#Ajout hotels
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (1, "Van der Valk", "Pl. des Guillemins 11, 4000 Liège, Belgique", 130, "Haut de gamme");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (1, "Hotel De La Couronne", "Esp. de l'Europe 2, 4020 Liège, Belgique", 435, "Milieu de gamme-supérieur");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (1, "Campanile", "Rue Jean-Baptiste Juppin 17/18, 4000 Liège, Belgique", 80, "Milieu de gamme");

INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (2, "Hôtel Georgette", "36 Rue du Grenier-Saint-Lazare, 75003 Paris", 35, "Haut de gamme");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (2, "Hôtel Verlain", "97 Rue Saint-Maur, 75011 Paris", 55, "Milieu de gamme-supérieur");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (2, "Hôtel F1 Paris Porte de Montreuil", "Zac Eugène Barlain, 290-302 Rue Etienne Marcel, 93170 Bagnolet", 80, "Économique");

INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (3, "Millennium Gloucester Hotel London Kensington", "4-18 Harrington Gardens, South Kensington, London SW7 4LH, Royaume-Uni", 125, "Haut de gamme");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (3, "The Tower Hotel", "St Katharine's Way, London E1W 1LD, Royaume-Uni", 250, "Haut de gamme");
INSERT INTO Hotel (sta_hotel, nom_hotel, adr_hotel, cap_hotel, cat_hotel) VALUES (3, "Smart Hyde Park View", "16 Leinster Terrace, London W2 3EU, Royaume-Uni", 25, "Économique");


#Ajout chambre
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (1, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (1, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (1, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (2, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (2, "Chambre double", 2, "Peu exposé", "Très confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (2, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (3, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (3, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (3, "Chambre simple", 1, "Exposé", "Confortable");


INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (4, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (4, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (4, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (5, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (5, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (5, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (6, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (6, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (6, "Chambre simple", 1, "Exposé", "Confortable");


INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (7, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (7, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (7, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (8, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (8, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (8, "Chambre simple", 1, "Exposé", "Confortable");

INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (9, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (9, "Chambre simple", 1, "Exposé", "Confortable");
INSERT INTO Chambre (hot_chambre, typ_chambre, cap_chambre, exp_chambre, con_chambre) VALUES (9, "Chambre simple", 1, "Exposé", "Confortable");




