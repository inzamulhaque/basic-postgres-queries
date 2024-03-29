-- Active: 1708971529087@@127.0.0.1@5432@ph

SHOW TIMEZONE;

-- with time zone
SELECT NOW();

CREATE TABLE "time zone" (time TIMESTAMP without time zone, time_zone TIMESTAMP with time zone);

INSERT into "time zone" VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * FROM "time zone";

SELECT CURRENT_DATE;
SELECT CURRENT_TIME;

SELECT NOW()::date;
SELECT NOW()::time;

SELECT to_char(NOW(), 'yyyy-mm-dd');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '03-11-1999');

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(YEAR FROM '03-01-1999'::date);

SELECT extract(MONTH FROM '03-01-1999'::date);

SELECT extract(DAY FROM '03-01-1999'::date);

SELECT 'Y'::BOOLEAN;

