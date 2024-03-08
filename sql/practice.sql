-- Active: 1709377974996@@127.0.0.1@5432@test
CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id) NOT NULL,
    salary DECIMAL (10,2),
    hire_date DATE
);


INSERT INTO employees (employee_name, department_id, salary, hire_date) VALUES
('John Doe', 1, 50000.00, '2020-01-10'),
('Jane Smith', 2, 55000.00, '2020-02-20'),
('Emily Jones', 3, 60000.00, '2020-03-15'),
('Michael Brown', 1, 65000.00, '2020-04-10'),
('Jessica Davis', 2, 70000.00, '2020-05-25'),
('William Wilson', 3, 75000.00, '2020-06-30'),
('Olivia Martin', 1, 80000.00, '2020-07-15'),
('Henry Garcia', 2, 85000.00, '2020-08-20'),
('Ava Martinez', 3, 90000.00, '2020-09-10'),
('Sophia Anderson', 1, 95000.00, '2020-10-05'),
('Ethan Thomas', 2, 100000.00, '2020-11-15'),
('Isabella Jackson', 3, 105000.00, '2020-12-10'),
('Mason White', 1, 110000.00, '2021-01-20'),
('Mia Harris', 2, 115000.00, '2021-02-25'),
('Jacob Clark', 3, 120000.00, '2021-03-30'),
('Charlotte Lewis', 1, 125000.00, '2021-04-15'),
('Amelia Walker', 2, 130000.00, '2021-05-20'),
('Elijah Hall', 3, 135000.00, '2021-06-25'),
('Noah Allen', 1, 140000.00, '2021-07-30'),
('Lily Young', 2, 145000.00, '2021-08-15');


CREATE Table departments(
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)


INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Finance'),
('Information Technology'),
('Marketing'),
('Sales'),
('Research and Development'),
('Customer Service'),
('Operations'),
('Product Management'),
('Legal');

SELECT * FROM employees;
SELECT * FROM departments;



select * from employees JOIN departments on employees.department_id = departments.department_id;
select * from employees JOIN departments USING(department_id);


select department_name, round(avg(salary)) from employees join departments USING(department_id)
GROUP BY department_name
;
select department_name, round(avg(salary)) as ava_salary from employees join departments USING(department_id)
GROUP BY department_name 
ORDER BY ava_salary DESC LIMIT 1
;



SELECT department_name, count(employee_id) from employees join departments USING(department_id) GROUP BY department_name; 


select extract(year from hire_date) as hire_year, count(*) from employees GROUP BY hire_year;