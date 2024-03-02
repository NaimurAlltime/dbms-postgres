-- Active: 1709375237234@@127.0.0.1@5432@test_db
CREATE TABLE students (
   student_id SERIAL PRIMARY KEY,
   firstName VARCHAR(100),
   lastName VARCHAR(100),
   age INT,
   grade CHAR(2),
   course VARCHAR(100),
   email VARCHAR(100),
   dob DATE,
   blood_group VARCHAR(5),
   country VARCHAR(50)
);