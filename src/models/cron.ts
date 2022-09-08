import cron from 'node-cron';
import fs from 'fs';
import sql from './sqlConn';
import SqlRequest from './sqlReq';
import { Id } from '../types/type';
import getPathToImg from '../helpers/pathToImg';
import makeDump from './dump';

// # ┌────────────── second (optional)
//  # │ ┌──────────── minute
//  # │ │ ┌────────── hour
//  # │ │ │ ┌──────── day of month
//  # │ │ │ │ ┌────── month
//  # │ │ │ │ │ ┌──── day of week
//  # │ │ │ │ │ │
//  # │ │ │ │ │ │
//  # * * * * * *

async function cleanDeletedBooks() {
  (await sql.query<Id[]>(SqlRequest.GET_DELETED_BOOKS))[0].forEach((el) => {
    const { id } = el;
    if (fs.existsSync(getPathToImg(id))) {
      fs.rmSync(getPathToImg(id));
    }
  });

  await sql.query(SqlRequest.DELETE_BOOK);
  await sql.query(SqlRequest.DELETE_BOOKS_AUTHORS);
}

export default function start() {
  cron.schedule('0 */1 * * *', cleanDeletedBooks);
  cron.schedule('0 0 * * *', makeDump);
}
