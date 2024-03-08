-- Active: 1709377974996@@127.0.0.1@5432@test
SELECT * FROM "user";
ALTER Table "user"
    ADD COLUMN city VARCHAR(25) DEFAULT 'Dhaka' NOT NULL;
INSERT INTO "user" VALUES(4, 'Hridoy', 'Mahamud', 30, 'hridoy@gmail.com', true, '01-01-1198', 'Barishal');

ALTER Table "user"
    DROP COLUMN city;

    ALTER TABLE "user" 
     RENAME COLUMN age to user_age;


ALTER TABLE "user"
    ALTER COLUMN first_name TYPE VARCHAR(55);


ALTER Table "user"
   Alter COLUMN user_age  set NOT NULL;


ALTER Table "user"
    alter COLUMN user_age DROP NOT null;

ALTER Table "user"
    ADD constraint unique_user_user_age UNIQUE(user_age);

ALTER Table "user"
    DROP constraint unique_user_user_age;
ALTER Table "user"
    ADD constraint pk_user_user_age PRIMARY KEY(person_id);


SELECT * from customer;
-- remove all existing data from table
TRUNCATE TABLE customer;

DELETE  from "user" WHERE person_id=4;