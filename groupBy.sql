-- Active: 1708971529087@@127.0.0.1@5432@ph

SELECT * FROM students;

SELECT country, count(*), avg(age) as "svgAge" FROM students 
    GROUP BY country;

SELECT country, count(*), avg(age) as "svgAge" FROM students 
    GROUP BY country
    HAVING avg(age) > 21;

SELECT  extract(YEAR FROM dob::date) as birth_year, count(*) FROM students
    GROUP BY birth_year;