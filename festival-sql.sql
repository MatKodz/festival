-- 1.
SELECT cinema_nom, cinema_adresse, cinema_nb_salles FROM f_cinemas ORDER BY cinema_nom

-- 2.
SELECT film_nom, film_realisateur FROM f_films WHERE film_pays = "France" ORDER BY film_date_sortie DESC

-- 3.
SELECT seance_heure_date, film_nom, seance_rencontre FROM f_seances INNER JOIN f_films ON f_films.film_id = f_seances.fk_film_id WHERE seance_rencontre IS TRUE and seance_heure_date BETWEEN '2021-03-01' and '2021-03-31'

-- 4.
SELECT DATE_FORMAT(seance_heure_date, " %d/%m à %Hh"), film_nom FROM f_seances INNER JOIN f_films ON f_films.film_id = f_seances.fk_film_id WHERE seance_heure_date > NOW() ORDER BY seance_heure_date LIMIT 10

-- 5.
SELECT COUNT(seance_id) FROM f_seances WHERE DATE(seance_heure_date) = '2021-03-23'

-- 6.
SELECT seance_heure_date, cinema_nom FROM f_seances INNER JOIN f_cinemas ON f_cinemas.cinema_id = f_seances.fk_cinema_id WHERE cinema_nom = "Diagonal Cinémas"

-- 7.
UPDATE f_films SET film_date_sortie = '2018' WHERE film_id = 6

-- 8.
INSERT INTO f_films VALUES (NULL,"Mon film",'01:21:00',"2017","Moi","The realisateur","France");

-- 9.
Décrire : afficher le temps moyen des films sortis en 2020

-- 10.
Décrire : nombre de séances programmées pour le film Intemperie

-- Bonus.
Décrire : 5 prochaines séances de films accessible au pmr
