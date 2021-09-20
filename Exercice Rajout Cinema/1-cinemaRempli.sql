use cinema;

INSERT INTO acteur (prenom, nom) VALUES ('Leonardo', 'DiCaprio');
INSERT INTO acteur (prenom, nom) VALUES ('KATE', 'WINSLET') ;
INSERT INTO acteur (prenom, nom) VALUES ('Marion', 'Cotillard') ;
INSERT INTO acteur (prenom, nom) VALUES ('Ellen', 'Page') ;
INSERT INTO acteur (prenom, nom) VALUES ('Christian', 'Bale') ;
INSERT INTO acteur (prenom, nom) VALUES ('ANNE', 'HATHAWAY') ;
INSERT INTO acteur (prenom, nom) VALUES ('MORGAN', 'FREEMAN') ;
INSERT INTO acteur (prenom, nom) VALUES ('Matt', 'Damon') ;
INSERT INTO acteur (prenom, nom) VALUES ('Caitriona', 'Balfe');

INSERT INTO realisateur (nom, prenom) VALUES ('JAMES', 'CAMERON') ;
INSERT INTO realisateur (nom, prenom) VALUES ('Christopher', 'Nolan') ;
INSERT INTO realisateur (nom, prenom) VALUES ('James', 'Mangold') ;

INSERT INTO film (titre, duree , realisateur_id) VALUES ('Titanic', 194, 1) ;
INSERT INTO film (titre, duree , realisateur_id) VALUES ('INCEPTION', 148, 2) ;
INSERT INTO film (titre, duree , realisateur_id) VALUES ('THE DARK KNIGHT RISES', 164, 2) ;
INSERT INTO film (titre, duree , realisateur_id) VALUES ('LE MANS 66', 153, 3) ;

INSERT INTO joue (film_id, acteur_id , role) VALUES ( 1, 1, 'Jack Dawson') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 2, 2, 'Rose DeWitt Bukater') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 2, 1, 'Dom Cobb') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 2, 3, 'Mall') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 2, 4, 'Ariane') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 3, 5, 'Bruce Wayne') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 3, 6, 'Selina') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 3, 7, 'Fox') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 3, 3, 'Miranda') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 4, 5, 'Ken Miles') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 4, 8, 'Carroll Shelby') ;
INSERT INTO joue (film_id, acteur_id , role) VALUES ( 4, 9, 'Mollie Miles') ;

INSERT INTO salle (nom) VALUES ('Salle 1') ;
INSERT INTO salle (nom) VALUES ('Salle 2') ;
INSERT INTO salle (nom) VALUES ('Salle 3') ;
INSERT INTO salle (nom) VALUES ('Salle 4') ;

INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 1, 1, '2020-08-10 09:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 1, 1, '2020-08-10 12:30:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 1, 1, '2020-08-10 15:45:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 1, 1, '2020-08-10 19:15:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 1, 1, '2020-08-10 21:00:00');

INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 2, 2, '2020-08-10 09:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 2, 2, '2020-08-10 11:45:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 2, 2, '2020-08-10 14:30:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 2, 2, '2020-08-10 17:15:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 2, 2, '2020-08-10 20:00:00');

INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 4, 3, '2020-08-10 09:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 4, 3, '2020-08-10 11:45:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 4, 3, '2020-08-10 14:30:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 4, 3, '2020-08-10 17:15:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 4, 3, '2020-08-10 21:00:00');

INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 3, 4, '2020-08-10 09:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 3, 4, '2020-08-10 12:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 3, 4, '2020-08-10 15:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 3, 4, '2020-08-10 18:00:00');
INSERT INTO seance (film_id, salle_id, date_seance) VALUES ( 3, 4, '2020-08-10 21:00:00');