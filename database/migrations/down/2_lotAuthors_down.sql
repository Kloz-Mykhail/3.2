DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books_authors;
ALTER TABLE books ADD author varchar(100);