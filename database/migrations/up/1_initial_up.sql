CREATE  TABLE IF NOT EXISTS books(
  title varchar(200),
  year int,
  pages int,
  about varchar(2000),
  author varchar(100),
  id int auto_increment primary key,
  count int default 0
);