use company_db;

select now() as current_date_time;
select curdate() as currentdate;
select curtime() as currenttime;
select datediff('2024-10-13', '2003-11-19') as date_difference;
select datediff(curdate(), '2003-11-19') as date_difference;
select date_add(curdate(), interval 10 day) as future_date;
select date_sub(curdate(), interval 7634 day) as past_date;