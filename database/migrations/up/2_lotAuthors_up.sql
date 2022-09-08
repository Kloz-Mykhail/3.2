ALTER TABLE books DROP author;

CREATE TABLE IF NOT EXISTS authors(
  id int auto_increment,
  author varchar(100),
  PRIMARY KEY(ID),
  UNIQUE(author)
);

CREATE TABLE IF NOT EXISTS books_authors(
  bookId int,
  author int
);