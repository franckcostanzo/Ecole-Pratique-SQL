use cinema;

-- Lister tous les films disponibles
SELECT * FROM cinema.film;

-- Lister tous les films du réalisateur Christopher Nolan
SELECT * FROM cinema.film as F
INNER JOIN cinema.realisateur as R ON F.realisateur_id = R.id
WHERE R.nom LIKE '%Nolan%'
ORDER BY F.titre;

-- Lister toutes les séances de la salle numéro 1 avec le film associé ;
SELECT titre,
date_seance
FROM cinema.film AS F
INNER JOIN cinema.seance as S ON F.id = S.film_id
INNER JOIN cinema.salle AS SA ON SA.id = S.salle_id
WHERE SA.id = 1
ORDER BY S.date_seance;

-- Calculer le nombre de séance par jour par salle ;
SELECT salle_id,
count(*)
FROM cinema.seance AS S
GROUP BY salle_id;