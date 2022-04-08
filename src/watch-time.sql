create table watch_times(id integer, category varchar(50), w_time integer);
insert into watch_times values(1, "drama", 5);
insert into watch_times values(2, "sports", 5);
insert into watch_times values(3, "drama", 4);
insert into watch_times values(4, "sports", 11);
insert into watch_times values(5, "sports", 11);

-- select id, category, w_time with highest w_time in each category
-- id	category	w_time
-- 1	drama	       5
-- 4	sports	       11
-- 5	sports	       11
select w.id, w.category, w.w_time from watch_times w inner join
                                       (select category, max(w_time) as w_time from watch_times group by category) t on w.w_time = t.w_time and w.category = t.category;