#A1
select name from person where name in (select name from eats where pizza = 'mushroom' or pizza = 'pepperoni') and gender = 'female';


#A2
select pizzeria from frequents where name in (SELECT name from person where age < 18);


#A3
select pizzeria, avg(price) as av from serves group by pizzeria order by av asc;


#A4
select pizzeria from serves where price = (select min(price) from serves where pizza = 'pepperoni');


#A5
select pizzeria from serves group by pizzeria having avg(price) < (select avg(price) from serves);


#A6
select count(pizza) from serves where pizzeria = 'Straw Hat';




#A7
select count(DISTINCT(name)) from frequents where pizzeria = 'Pizza Hut' or pizzeria = 'Chicago Pizza';


#A8
insert into person (name, age, gender) values ('tes',24,',male');


#A9
select name from person where age in (select max(age) from person where name in (select name from eats where pizza = 'mushroom')) and name in(select name from eats);

#A10
update serves set price = (price * 1.1) where pizzeria = 'Pizza Hut'


