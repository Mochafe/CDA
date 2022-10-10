-- Active: 1664278796352@@127.0.0.1@3306@hotel
(
    SELECT COUNT(res_id)
    FROM reservation
        JOIN chambre ON reservation.res_cha_id = chambre.cha_id
        JOIN hotel ON chambre.cha_hot_id = hotel.hot_id
    WHERE hot_id = (
            SELECT DISTINCT hot_id
            FROM reservation
                JOIN chambre ON reservation.res_cha_id = chambre.cha_id
                JOIN hotel ON chambre.cha_hot_id = hotel.hot_id
            WHERE reservation.res_cha_id = 
        )
)