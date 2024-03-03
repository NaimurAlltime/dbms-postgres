-- Active: 1709375237234@@127.0.0.1@5432@test_db
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

--ON DELETE CASCADE
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

--ON DELETE set DEFAULT 
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
);

ALTER TABLE post ALTER COLUMN user_id set NOT NULL;

INSERT INTO "user" (username) VALUES
    ('naim'),
    ('sabbir'),
    ('jahid'),
    ('shuvo');

 INSERT INTO post (title, user_id) VALUES
    ('Enjoiing friday in every week', 2),
    ('Tour is best moment in life', 1),
    ('University life very important in crear', 4),
    ('English is most important language for remotly job', 4);  

  INSERT INTO post (title, user_id) VALUES
    ('Test title', NULL);  

 DROP TABLE post;

 DROP TABLE "user";   

 SELECT * FROM "user";   

 SELECT * FROM post;   

 -- Cascading Deletion -> ON DELETE CASCADE
 DELETE FROM "user" WHERE id = 4;

 -- Set Default value -> ON DELETE SET DEFAULT
 DELETE FROM "user" WHERE id = 4;


 -- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT

