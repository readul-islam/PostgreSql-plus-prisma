-- Active: 1709377974996@@127.0.0.1@5432@test
show timezone;

SELECT now();

create table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);


INSERT into timez VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')


SELECT * from timez;

SELECT now()::time;
SELECT to_char(now(), 'Month');


SELECT CURRENT_DATE - INTERVAL '1 year 4 month';

SELECT age(CURRENT_DATE, '1996-07-29');


SELECT *, age(CURRENT_DATE, dob) from students;


SELECT extract(month from '2024-01-25'::date);