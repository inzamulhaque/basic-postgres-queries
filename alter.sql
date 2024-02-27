-- Active: 1708971529087@@127.0.0.1@5432@ph

SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN name VARCHAR(25) DEFAULT 'Default Name' NOT NULL;

ALTER TABLE person2 DROP COLUMN name;

ALTER TABLE person2 RENAME COLUMN age TO user_age;

ALTER TABLE person2 ALTER COLUMN user_name TYPE VARCHAR(50);

ALTER TABLE person2 ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (user_age);

ALTER TABLE person2 DROP constraint unique_person2_user_age;

ALTER TABLE person2 DROP constraint unique_person2_user_age;

ALTER TABLE person2 ADD constraint pk_person2_id PRIMARY KEY (id);

ALTER TABLE person2 DROP constraint pk_person2_id;

TRUNCATE TABLE person2;

INSERT INTO
    person2 (user_name, email, user_age)
VALUES (
        'user1', 'user1@email.com', 19
    ),
    (
        'user2', 'user2@email.com', 20
    ),
    (
        'user3', 'user3@email.com', 21
    )