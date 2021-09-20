use cinema;

-- ----------------------------------------------
-- METTRE TOUT MAJ
-- ----------------------------------------------
UPDATE film SET titre = upper (titre) WHERE id >0;

-- ----------------------------------------------
-- METTRE LA PREMIERE LETTRE MAJ ET LE RESTE LOW
-- ----------------------------------------------
UPDATE  acteur
SET	prenom = CONCAT ( UPPER(substring(prenom,1,1)), LOWER(substring(prenom, 2, (length(prenom)-1)))),
	nom = upper(nom)
    WHERE Id >0;
    
UPDATE  realisateur
SET	prenom = CONCAT ( UPPER(substring(prenom,1,1)), LOWER(substring(prenom, 2))), -- on a pas besoin de préciser jusqu'à cb, on dit juste à partir de 2
	nom = upper(nom)
    WHERE Id >0;

-- ----------------------------------------------
-- CHANGER LE NOM
-- ----------------------------------------------    
UPDATE salle SET nom = 'Salle fantastique' WHERE id =1 ;
UPDATE salle SET nom = 'Salle space opera' WHERE id =2;
UPDATE salle SET nom = 'Salle médiévale' WHERE id =3;
UPDATE salle SET nom = 'Salle obscure' WHERE id =4;

-- ----------------------------------------------
-- CHANGER L'HEURE D'UNE SEANCE
-- ---------------------------------------------- 
UPDATE seance SET date_seance = '2020-08-10 20:00:00' WHERE film_id = 1 AND date_seance = '2020-08-10 19:15:00';