-- Active: 1709377974996@@127.0.0.1@5432@test
CREATE Table students (
    student_id SERIAL PRIMARY KEY, first_name VARCHAR(50), age INT, grade CHAR(2), course VARCHAR(50), email VARCHAR(100), dob DATE, blood_group VARCHAR(5), country VARCHAR(50)
);

INSERT INTO
    students (
        first_name, age, grade, course, email, dob, blood_group, country
    )
VALUES (
        'Liam', 18, 'A', 'Physics', 'liam@example.com', '2006-03-14', 'O+', 'United States'
    ),
    (
        'Isabella', 17, 'B', 'Chemistry', 'isabella@example.com', '2007-07-23', 'A-', 'Canada'
    ),
    (
        'Noah', 19, 'A+', 'Mathematics', 'noah@example.com', '2005-10-30', 'B+', 'United Kingdom'
    ),
    (
        'Charlotte', 18, 'A-', 'Biology', 'charlotte@example.com', '2006-09-08', 'AB-', 'Australia'
    ),
    (
        'Ethan', 17, 'B-', 'History', 'ethan@example.com', '2007-01-17', 'O-', 'Germany'
    ),
    (
        'Mia', 18, 'A', 'English Literature', 'mia@example.com', '2006-05-25', 'AB+', 'France'
    ),
    (
        'James', 17, 'B+', 'Computer Science', 'james2@example.com', '2007-11-02', 'A+', 'Spain'
    ),
    (
        'Amelia', 19, 'A-', 'Art', 'amelia@example.com', '2004-08-11', 'B-', 'Italy'
    ),
    (
        'Oliver', 18, 'B', 'Economics', 'oliver@example.com', '2006-02-19', 'O-', 'Japan'
    ),
    (
        'Sophia', 17, 'A+', 'Geography', 'sophia2@example.com', '2007-04-05', 'AB-', 'South Korea'
    );

INSERT INTO
    students (
        first_name, age, grade, course, dob, blood_group, country
    )
VALUES (
        'hridoy', 24, 'A', 'Psychology', '2006-07-28', 'O+', 'Canada'
    ),
    (
        'sagor', 22, 'A+', 'Theology', '2007-03-04', 'AB-', 'South Korea'
    );

-- SELECT : Retrieves data from one or more tables.
-- FROM : Specifies the table from which to retrieve data.
-- WHERE: Filters data based on specified conditions.
-- ORDER BY:Sort the result set based on specified columns.
-- GROUP BY: GROUP rows that have the same values in specified columns.
-- HAVING: Filters the results of a GROUP BY clause based on specified conditions.
-- JOIN: Combines rows from two or more tables based on a related column.
-- DISTINCT: Returns unique values in the result set.
-- LIMIT : Specifies the maximum number of rows to return.
-- OFFSET: Specifies the minimum number of rows to skip before stating to return rows.

SELECT * FROM students;

SELECT email as student_email from students;

SELECT * FROM students ORDER BY age ASC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group from students;

SELECT * FROM students WHERE country = 'France' AND age = 18;

SELECT *
FROM students
WHERE (
        country = 'France'
        OR country = 'Germany'
    )
    and age = 18;

SELECT * FROM students WHERE age <> 19;

SELECT * FROM students WHERE NOT age = 19;

SELECT upper(first_name), * from students;

SELECT concat(first_name, ' ', country) from students;

-- @Scalar Function:
-- Upper() convert a string to upperCase.
-- Lower() convert a string to lowerCase.
-- Concat() Concatenates two or more string.
-- Length() returns the length of characters in the string.

--  @Aggregate Function:
-- Avg() Calculate the average of a set of values.
-- Max() return the maximum value in a set.
-- Min() return the minimum value in a set.
-- Sum() Calculates the sum of values in a set.
-- Count() Counts the number of rows in a set.

SELECT * from students WHERE email IS NULL;

SELECT COALESCE(email, 'Email not provided') as email from students;

SELECT * from students;

SELECT *
from students
WHERE
    country = 'United States'
    OR country = 'Canada'
    OR country = 'France';

SELECT * from students WHERE country IN ('United States', 'France');

SELECT *
from students
WHERE
    country NOT IN ('United States', 'France');

SELECT * from students WHERE age BETWEEN 19 and 26;

SELECT *
from students
WHERE
    dob BETWEEN '2000-01-01' and '2008-01-01'
ORDER BY dob;

SELECT * from students WHERE first_name LIKE '%am';
--Like case SENSITIVE
SELECT * from students WHERE first_name LIKE 'W%';

SELECT * from students WHERE first_name LIKE '___a%';

SELECT * from students WHERE first_name ILIKE 'c%';
-- Ilike case INSENSITIVE

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;



SELECT * from students;

DELETE FROM students where grade = 'B';


UPDATE students 
   set email='example@example.com' , age=50, grade='A+'
    where student_id=1