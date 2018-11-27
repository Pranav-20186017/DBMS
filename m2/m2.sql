select title from movie where  director = 'Steven Spielberg';

select year from movie where title = 'Star Wars';


select title from movie where mID in (select  mid from rating);


select ratingDate from reviewer, rating where rating.rID = reviewer.rID and reviewer.name = 'Brittany Harris';



select title from movie where mid not in (select mid from rating where rid in (select rid from reviewer where name = 'Elizabeth Thomas'));



select  title from  movie where mid in (select mid from rating where stars = 4 or stars = 5);



select  name from reviewer where rid not  in (select rid from rating);


select movie.mID,title,year,director from movie,rating,reviewer where movie.mID = rating.mID and rating.rID = reviewer.rID and reviewer.name = 'Chris Jackson';



select  name from reviewer where rid in (select rid from rating where mid in (select mid from movie where title = 'Gone with the Wind'));



select director from movie,reviewer,rating where movie.mID = rating.mID and rating.rID = reviewer.rID and stars = 2 and reviewer.name = 'Brittany Harris'






