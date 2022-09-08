import { Request, Response } from 'express';
import sql from '../models/sqlConn';
import { Book, Count } from '../types/type';
import SqlRequest from '../models/sqlReq';

export async function getBookById(req: Request, res: Response) {
  try {
    const id = +req.params.id;

    const [books] = await sql.execute<(Book & { author: string })[]>(
      SqlRequest.GET_BOOK_WITH_AUTHORS_BY_ID,
      [id],
    );
    if (books[0]) res.render('book-page', books[0]);
    else res.status(404).render('error-page', { error: '404 not found' });
  } catch (error) {
    res.status(500).json({ error: 'Cant get book by id' });
  }
}

export async function getBooks(req: Request, res: Response) {
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
    if (books.length - offset < 0 || books.length === 0) {
      res.render('error-page', { error: 'Books not found' });
    } else {
      res.render('books-page', {
        books: books.slice(offset, offset + count),
        title: 'lib',
        pag: {
          isLastPage: books.length <= offset + count,
          isFirstPage: offset === 0,
          totalPageNumber: offset / count + 1,
          numberPages: Math.floor(books.length / count) + 1,
        },
        helpers: {
          selectPage(pageNumber: number) {
            return `?offset=${
              (+pageNumber - 1) * count
            }&count=${count}&search=${search}&author=${author}&year=${year}`;
          },
          times(n: number, block: any) {
            let accum = '';
            for (let i = 0; i < n; ++i) {
              accum += block.fn(i);
            }
            return accum;
          },
        },
      });
    }
  } catch (error) {
    res.status(500).json({ error: 'Cant get books' });
  }
}

export async function incrementCount(req: Request, res: Response) {
  try {
    const bookId = +req.body.bookId;
    const lastCount = (
      await sql.execute<Count[]>(SqlRequest.GET_COUNT_CLICK, [bookId])
    )[0][0].count;

    await sql.execute<Book[]>(SqlRequest.UPDATE_CLICK_COUNT, [
      lastCount + 1,
      bookId,
    ]);
    res.json({ count: 'ok' });
  } catch (error) {
    res.status(500).json({ error: 'Cant increment count of clicks' });
  }
}
