-- Active: 1709377974996@@127.0.0.1@5432@test
-- A trigger is a database object in PostgreSQL (and other database management system) that automatically executes a specified set of actions in response to certain database events or conditions.
-- Table level events:
-- Insert, delete, TRUNCATE
-- Database level events:
-- Database startup, Database shutdown, Database connection start end end etc.ADD

SELECT * from auth;
SELECT * from post;


CREATE FUNCTION remove_auth_post()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
DELETE FROM post where user_id=OLD.user_id;
END
$$;

DELETE FROM auth WHERE id=1; 

CREATE TRIGGER TR
BEFORE DELETE
on auth
for each row
EXECUTE FUNCTION remove_auth_post();



CREATE INDEX idx_tableName_last_name
on tableName (fieldName);

show data_directory;