##A1
select name from highschooler where id in (select id1 from friend where id2 in (select id from highschooler where name like 'Gabriel'));

##A2
select name,grade from highschooler where id in (select id2 from likes group by id2 having count(*) > 1);


##A3
select name,grade from highschooler where id not in (select id1 from likes) INTERSECT  (select name,grade from highschooler where id not in (select distinct id2 from likes)) order by grade DESC, name ASC;


##A4
select h.name, h.grade from highschooler h, friend f where h.id = f.id1 group by h.name,h.grade having count(f.id2) = (select max(r.c) from (select count(id2) as c from friend group by id1) as r);


##A5
select count(id1) from friend where id1 = (select id from highschooler where name like 'Alexis');


##A6
select abs(count(id) - count(distinct name)) as diff from highschooler;


##A7
INSERT into highschooler (id, name, grade) VALUES (2000, 'jane', 9);


##A8
delete from highschooler where id != all(select id1 from likes);


##A9
delete from highschooler where grade = 12;


##A10

update highschooler set grade = grade + 1;	