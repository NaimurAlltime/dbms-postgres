-- Active: 1709375237234@@127.0.0.1@5432@test_db
SELECT country, count(*), avg(age) FROM students 
   GROUP BY country;

SELECT country, avg(age) FROM students 
   GROUP BY country HAVING avg(age) >= 22; 


 -- count students born in each YEAR
 SELECT extract(year from dob) as birth_year, count(*) FROM students GROUP BY birth_year;    