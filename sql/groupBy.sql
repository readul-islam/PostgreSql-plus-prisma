-- Active: 1709377974996@@127.0.0.1@5432@test
SELECT * from students;

SELECT country, count(*) as total, avg(age) as big_student
from students
GROUP BY
    country;

SELECT country, avg(age) as big_student
from students
GROUP BY
    country
HAVING
    avg(age) > 18;

SELECT extract(
        year
        from dob::date
    ) as birth_year, count(*)
from students
GROUP BY
    birth_year;