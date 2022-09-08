import fs from 'fs';
import sql from '../models/sqlConn';

export default async function migrate(pathToFile: fs.PathOrFileDescriptor) {
  try {
    await sql.query(fs.readFileSync(pathToFile, 'utf-8'));
    console.log('Ok');
  } catch (error) {
    console.error(error);
  }
}
