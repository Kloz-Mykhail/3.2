import { Request, Response } from 'express';
import sql from '../models/sqlConn';
import { Book, Id } from '../types/type';
import isSingleFile from '../helpers/isSingleFile';
import getPathToImg from '../helpers/pathToImg';
import SqlRequest from '../models/sqlReq';

export async function deleteBook(req: Request, res: Response) {
  try {
    const id = +req.params.id;

    await sql.execute(SqlRequest.SET_AS_DELETED_BOOK, [id]);
    await sql.execute(SqlRequest.SET_AS_DELETED_BOOKS_AUTHORS, [id]);

    res.redirect('/admin');
  } catch (error) {
    res.status(500).json({ error: 'Cant delete book' });
  }
}

export async function addBook(req: Request, res: Response) {
  try {
    await sql.execute(SqlRequest.ADD_BOOK, [
      `${req.body.title}`,
      +req.body.year,
      +req.body.pages,
      `${req.body.about}`,
    ]);
    const [bookID] = await sql.query<Id[]>(SqlRequest.GET_LAST_BOOK_ID);
    const authorsArray = `${req.body.author}`.split(/\s*,\s*/);
    authorsArray.forEach(async (author) => {
      await sql.execute(SqlRequest.ADD_AUTHOR, [author]);
      const [authorID] = await sql.execute<Id[]>(SqlRequest.GET_AUTHOR_ID, [
        author,
      ]);
      await sql.execute(SqlRequest.ADD_BOOKS_AUTHORS, [
        bookID[0].id,
        authorID[0].id,
      ]);
    });
    if (req.files?.img && isSingleFile(req.files.img)) {
      req.files.img.mv(getPathToImg(bookID[0].id));
    }

    res.redirect('/admin');
  } catch (error) {
    res.status(500).json({ error: 'Cant add book' });
  }
}
export async function getAdminBooks(req: Request, res: Response) {
  try {
    const offset = +((req.query.offset || 0) >= 0 ? req.query.offset || 0 : 0);
    const count = +(req.query.count || 20);
    const search =
      req.query.search && /^[^%]+$/.test(req.query.search as string)
        ? `%${req.query.search}%`
        : '%';
    const author = `${req.query.author || '%'}`;
    const year = `${req.query.year || '%'}`;

    const [books] = await sql.execute<(Book & { author: string })[]>(
      SqlRequest.GET_BOOKS_WITH_AUTHORS,
      [search, author, year],
    );

    res.render('admin-books-page', {
      auth: true,
      books: books.slice(offset, offset + count),
      title: 'admin lib',
      pag: {
        isLastPage: books.length <= offset + count,
        isFirstPage: offset === 0,
        totalPageNumber: offset / count + 1,
        numberPages: Math.floor(books.length / count) + 1,
      },
      helpers: {
        selectPage(pageNumber: number) {
          return `admin?offset=${
            (+pageNumber - 1) * count
          }&count=${count}&search=${search}&author=${author}&year=${year}`;
        },
        times(n: number, block: any) {
          let accum = '';
          for (let i = 0; i < n; i += 1) {
            accum += block.fn(i);
          }
          return accum;
        },
      },
    });
  } catch (error) {
    res.status(500).json({ error: 'Cant get books' });
  }
}
