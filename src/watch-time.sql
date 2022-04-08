create table Videos(id integer, category varchar(50), watch_time integer);
insert into Videos values(1, "drama", 5);
insert into Videos values(2, "sports", 5);
insert into Videos values(3, "drama", 4);
insert into Videos values(4, "sports", 11);
insert into Videos values(5, "sports", 11);

-- select id, category, w_time with highest w_time in each category
-- id	category	w_time
-- 1	drama	       5
-- 4	sports	       11
-- 5	sports	       11

select v.id, v.category, v.watch_time from Videos v inner join
                                           (select category, max(watch_time) as watch_time from Videos group by category) t on v.watch_time = t.watch_time and v.category = t.category;