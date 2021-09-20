use cinema;

-- Ajouter une nouvelle salle qui se nommera « évaluation » ;
INSERT INTO salle (nom) VALUES ('évaluation');

-- Changer le nom de la salle « évaluation » en « salle d’apprentissage » ;
UPDATE salle SET nom = 'salle d''apprentissage' WHERE nom LIKE '%évaluation%';

-- Ajouter une séance à la salle d’apprentissage pour le 12/08/2020 à 9h00 avec le film INCEPTION ;
INSERT INTO seance (film_id, salle_id, date_seance) VALUES (2, 5, '2020-08-12 09:00:00');

-- Supprimer la salle d'apprentissage ;
DELETE FROM seance WHERE salle_id =5;
DELETE FROM salle WHERE nom LIKE '%apprentissage%';