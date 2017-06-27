CREATE TABLE "todos" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(255) NOT NULL,
  "details" TEXT NULL,
  "priority" INT NOT NULL DEFAULT 1,
  "created_at" TIMESTAMP NOT NULL,
  "completed_at" TIMESTAMP NULL
);

INSERT INTO todos (id, title, details, priority, created_at) VALUES (1, 'Do homework', 'Read the lesson', 10, '6-27-2017');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (2, 'Take out trash', 'You really want to do this', 9, '6-20-2017');
INSERT INTO todos (id, title, details, priority, created_at, completed_at) VALUES (3, 'Jessies wedding', 'Be a bridesmaid', 4, '12-21-2016', '6-17-2017');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (4, 'Emilys Wedding', 'Go be a bridesmaid again', 9, '1-4-2016');
INSERT INTO todos (id, title, details, priority, created_at) VALUES (5, 'Caitlyns wedding', 'Be a bridesmaid AGAIN', 1, '2-15-2016');

SELECT *
FROM todos
WHERE completed_at IS null;

SELECT *
FROM todos
WHERE priority > 1;

UPDATE todos
SET completed_at = '6-27-2017'
WHERE id = 1;

DELETE FROM todos
WHERE NOT completed_at IS null;
