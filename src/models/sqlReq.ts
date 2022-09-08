enum SqlRequest {
  ADD_BOOK = 'INSERT INTO books(title, year, pages, about) VALUES ( ? , ? , ? , ? )',
  ADD_AUTHOR = 'INSERT IGNORE INTO authors(author) Values(?)',
  ADD_BOOKS_AUTHORS = 'INSERT INTO books_authors(bookId, author) VALUES(?, ?)',
  DELETE_BOOK = 'DELETE FROM books WHERE deleted = true',
  DELETE_BOOKS_AUTHORS = 'DELETE FROM books_authors WHERE deleted = true',
  GET_DELETED_BOOKS = 'SELECT id from books WHERE deleted = true',
  GET_COUNT_CLICK = 'SELECT count FROM books WHERE id = ?',
  GET_BOOKS_WITH_AUTHORS = 'SELECT books.id, books.title, GROUP_CONCAT(authors.author SEPARATOR ", ") as author FROM books JOIN books_authors ON books_authors.bookId = books.id JOIN authors ON authors.id = books_authors.author  WHERE books.title LIKE ? AND authors.author LIKE ? AND books.year LIKE ? GROUP BY books.id',
  GET_BOOK_WITH_AUTHORS_BY_ID = 'SELECT books.id, books.title, books.year,books.pages,books.about, GROUP_CONCAT(authors.author SEPARATOR ", ") as author FROM books JOIN books_authors ON books_authors.bookId = books.id JOIN authors ON authors.id = books_authors.author  WHERE books.id = ? GROUP BY books.id',
  GET_AUTHOR_ID = 'SELECT id FROM authors WHERE author = ? LIMIT 1',
  GET_LAST_BOOK_ID = 'SELECT LAST_INSERT_ID() as id',
  UPDATE_CLICK_COUNT = 'UPDATE books SET count = ? WHERE id = ?',
  SET_AS_DELETED_BOOK = 'UPDATE books SET deleted = true WHERE id = ?',
  SET_AS_DELETED_BOOKS_AUTHORS = 'DELETE FROM books_authors WHERE bookId = ?',
}
export default SqlRequest;
