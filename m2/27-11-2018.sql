SELECT title from `movie` WHERE director = "Steven Spielberg"

SELECT year from `movie` WHERE title = "Star Wars"

SELECT DISTINCT title from `movie`,`rating` WHERE movie.mID = rating.mID


SELECT ratingDate from `reviewer`, `rating` WHERE rating.rID = reviewer.rID and reviewer.name = "Brittany Harris"


SELECT DISTINCT title from `movie`,`rating` WHERE movie.mID = rating.mID and (stars = 4 or stars = 5)

SELECT name from `reviewer`,`rating` WHERE rating.rID = NULL


SELECT movie.mID,title,year,director from `movie`,`rating`,`reviewer` WHERE movie.mID = rating.mID and rating.rID = reviewer.rID and reviewer.rID = (SELECT rID from reviewer WHERE name = "Chris Jackson")
SELECT movie.mID,title,year,director from `movie`,`rating`,`reviewer` WHERE movie.mID = rating.mID and rating.rID = reviewer.rID and reviewer.name = "Chris Jackson"


SELECT DISTINCT name from `movie`,`reviewer`,`rating` WHERE reviewer.rID = rating.rID and movie.mID = rating.mID and movie.title = "Gone with the Wind"

SELECT director from `movie`,`reviewer`,`rating` WHERE movie.mID = rating.mID and rating.rID = reviewer.rID and stars = 2 and reviewer.name = "Brittany Harris"

SELECT director from movie,reviewer,rating WHERE movie.mID = rating.mID and rating.rID = reviewer.rID and stars = 2 and reviewer.name = 'Brittany Harris'