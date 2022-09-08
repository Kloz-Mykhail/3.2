import mySql2 from 'mysql2/promise';
import * as dotenv from 'dotenv';

dotenv.config();

export default mySql2.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  port: +(process.env.DB_PORT || 3306),
  multipleStatements: true,
});
