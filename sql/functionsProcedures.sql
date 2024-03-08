-- Active: 1709377974996@@127.0.0.1@5432@test

SELECT * FROM employees;
CREATE Function employeeCount()
RETURNS INT
LANGUAGE SQL
AS
$$

SELECT  count(*) from employees;
$$;

SELECT employeeCount();


CREATE Function delete_employee_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$

DELETE FROM employees WHERE employee_id = p_emp_id;
$$;


SELECT delete_employee_by_id(20);

CREATE Procedure remove_employee_var()
LANGUAGE plpgsql
AS
$$
DECLARE
test_var int;
BEGIN
SELECT employee_id INTO test_var FROM employees WHERE employee_id = 18;
DELETE FROM employees WHERE employee_id = test_var;
END
$$;

CALL remove_employee();

CALL remove_employee_var()