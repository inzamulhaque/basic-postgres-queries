-- Active: 1708971529087@@127.0.0.1@5432@ph

SELECT * FROM employees;

EXPLAIN ANALYSE
SELECT * FROM employees WHERE employee_name = 'Andrew Cook';

SELECT * FROM employees WHERE employee_name = 'Andrew Cook';

CREATE INDEX idx_employee_name ON employees(employee_name);

SHOW data_directory;