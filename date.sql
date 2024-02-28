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

