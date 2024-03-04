-- Active: 1709375237234@@127.0.0.1@5432@test_db

SELECT * from  employees;


EXPLAIN ANALYSE
SELECT * from employees WHERE emp_no = '10004';

CREATE INDEX idx_employees_last_name
on employees (last_name);

SHOW data_directory;