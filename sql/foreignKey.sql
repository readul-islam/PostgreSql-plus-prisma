-- Active: 1709377974996@@127.0.0.1@5432@test
create Table auth (
    id SERIAL PRIMARY KEY, username VARCHAR(25) UNIQUE NOT NULL
);

INSERT INTO
    auth (username)
VALUES ('akash'),
    ('sagor'),
    ('hridoy'),
    ('readul');

SELECT * FROM auth;

create Table post (
    id SERIAL PRIMARY KEY, title Text, user_id INTEGER REFERENCES auth (id)
);

create Table post (
    id SERIAL PRIMARY KEY, title Text, user_id INTEGER REFERENCES auth (id) on delete CASCADE
);

create Table post (
    id SERIAL PRIMARY KEY, title Text, user_id INTEGER REFERENCES auth (id) On DELETE set null
);

create Table post (
    id SERIAL PRIMARY KEY, title Text, user_id INTEGER REFERENCES auth (id)  ON DELETE set DEFAULT DEFAULT 2
);

insert into post  VALUES (5,'I am null', null);

ALTER TABLE post alter COLUMN user_id set NOT NULL;

SELECT * FROM post where user_id = 1;

-- Insertion constraint on Insert post
-- Attempting to insert a post with a user Id that doesn't exist.
-- Inserting a post with a valid userId,
-- Attempting to insert a post without specifying a user Id
-- Attempting to insert a post without specifying a user Id



-- Deletion CONSTRAINT on DELETE USER
-- Casecading Deletion ==> on delete CASCADE
-- Setting null ==> On DELETE set null
-- Restrict deletion ==> on DELETE RESTRICT / on DELETE no action (default)
-- set DEFAULT VALUE ==> ON DELETE set DEFAULT

DELETE FROM auth where id = 1;

SELECT * FROM auth;
SELECT * FROM post;

SELECT * from post as p
JOIN auth as a on a.id = p.id;
SELECT * from post as p
INNER JOIN auth as a on a.id = p.id;

SELECT * from auth as p
right JOIN post  as a on a.id = p.id;

SELECT * from auth as p
left JOIN post as a on a.id = p.id;
SELECT * from auth as p
FULL JOIN post as a on a.id = p.id;