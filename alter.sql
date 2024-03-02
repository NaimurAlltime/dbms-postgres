-- Active: 1709375237234@@127.0.0.1@5432@test_db2
SELECT * from person2;

-- (value) @

ALTER TABLE person2 ADD COLUMN email VARCHAR(25) DEFAULT 'dafult@gmail.com' NOT NULL;

INSERT INTO person2 VALUES(6, 'Nibir', 42, 'nibir@gmail.com');

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER TABLE person2 ALTER COLUMN user_name TYPE VARCHAR(100);

ALTER TABLE person2 ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2 ADD constraint uniqe_person2_user_name UNIQUE(user_name);

ALTER TABLE person2 DROP constraint uniqe_person2_user_name;

TRUNCATE TABLE person;