-- Active: 1708971529087@@127.0.0.1@5432@ph

CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



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


-- DROP Table post;
-- DROP Table "user";

INSERT INTO post (id, title, user_id) VALUES
(5,'this is a test post title', NULL);

SELECT * from "user";
SELECT * from post;

SELECT title, username FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT title, username, user_id FROM "user"
    JOIN post on "user".id = post.user_id;

SELECT * FROM post
    JOIN "user" on post.user_id = "user".id;

SELECT title, username, "user".id, post.id as "Post ID" FROM "user"
    JOIN post on "user".id = post.user_id;

SELECT title, username, u.id as "User ID", p.id FROM post as p
    JOIN "user" u on p.user_id = u.id;

SELECT title, username, u.id as "User ID", p.id FROM post p
    JOIN "user" as u on p.user_id = u.id;

SELECT title, username, u.id as "User ID", p.id FROM post as p
    JOIN "user" as u on p.user_id = u.id;

SELECT title, username, u.id as "User ID", p.id FROM post as p
    INNER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    LEFT OUTER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    RIGHT OUTER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
    FULL OUTER JOIN "user" as u on p.user_id = u.id;