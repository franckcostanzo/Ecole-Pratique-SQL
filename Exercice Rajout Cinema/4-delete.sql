use cinema;

DELETE FROM seance WHERE film_id = 1 AND date_seance = '2020-08-10 21:00:00';


DELETE FROM joue WHERE film_id = 1;
DELETE FROM seance WHERE film_id =1;   
DELETE FROM film WHERE id = 1;