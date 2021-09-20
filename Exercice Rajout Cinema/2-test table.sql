use cinema;

SELECT *
FROM acteur
ORDER BY acteur.id;

SELECT *
FROM realisateur
ORDER BY realisateur.id;

SELECT *
FROM film
ORDER BY titre;

SELECT *
FROM joue
ORDER BY acteur_id;

SELECT *
FROM salle
ORDER BY id;

SELECT *
FROM seance
ORDER BY date_seance;