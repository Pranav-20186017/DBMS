##A1
select title from movie where mid not in (select mid from rating);

##A2
select abs(avg(x.q) - avg(y.w)) as average from (select t.a as q from (select mid, avg(stars) as a from rating group by mid) as t where t.mid in (select mid from movie where year > 1980)) as x, (select t.a as w from (select mid, avg(stars) as a from rating group by mid) as t where t.mid in (select mid from movie where year < 1980)) as y;

##Assignment 3 Query
select year from movie where mid in (select mid from rating where stars = 4 or stars = 5) order by year DESC;

##Assignment 4 Query
select name from reviewer where  reviewer.rid  in (select rid from rating where ratingdate is null);

##A5
SELECT title,avg(stars) as avg_rating from movie,rating where movie.mid = rating.mid group by title order by avg_rating DESC ;

##A6
select name from reviewer where rid in (select rid from (select rid, count(mID) from rating group by rid having count(mid) > 2) as t)


##A7
select title from movie where mid in (select mid from rating where stars = ( select min(stars) from rating)) order by title;
select DISTINCT title from movie, rating where movie.mid in (select rating.mid from rating where stars = (select min(stars) from rating)) order by  title ASC;

##A8
select avg(stars) from rating where mid = (select mid from movie where title = 'Gone with the Wind');

#A9
select title , count(rating.mid) as movie_count from movie,rating where movie.mid = rating.mid group by title ORDER BY movie_count DESC ,title;

#A10
select title from movie where year > 1964 and year < 1984;

