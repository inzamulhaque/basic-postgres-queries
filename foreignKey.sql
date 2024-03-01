-- Active: 1708971529087@@127.0.0.1@5432@ph

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE NOT NULL
);

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * from "user";

SELECT * from post;

-- DROP Table post;

-- DROP Table "user";

ALTER Table post
    alter COLUMN user_id set NOT null;

INSERT INTO post (title, user_id) VALUES('test', NULL);

DELETE FROM "user"
    WHERE id = 4;

-- CREATE Table post(
--     id SERIAL PRIMARY KEY,
--     title text NOT NULL,
--     user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2 
-- )


-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT