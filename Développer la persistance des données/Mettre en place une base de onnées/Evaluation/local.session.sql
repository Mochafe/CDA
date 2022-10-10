LOAD DATA LOCAL INFILE '~/Downloads/produit(1).csv' 
INTO TABLE produit FIELDS TERMINATED BY ';'  
IGNORE 1 LINES 
(codart,libart,unimes,stkale,stkphy,qteann);

LOAD DATA LOCAL INFILE './vente.csv' INTO TABLE produit FIELDS TERMINATED BY ';' IGNORE 1 LINES (numfou,codart,delliv,qte1,prix1,qte2,prix2,qte3,prix3),