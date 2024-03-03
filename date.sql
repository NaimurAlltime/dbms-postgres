-- Active: 1709375237234@@127.0.0.1@5432@test_db
SHOW timezone;

SELECT now();

create table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timez VALUES('2024-01-12', '2024-01-12 10:45:00');

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

--formate date
SELECT to_char(now(), 'yyyy/mm/dd');

SELECT to_char(now(), 'DD Month, YYYY');

-- back date
SELECT CURRENT_DATE - INTERVAL '1 year';

-- get date of birth
SELECT age(CURRENT_DATE, '2001-03-14');
SELECT age(CURRENT_DATE, '2004-12-30');

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(MONTH FROM '2001-03-14'::date);