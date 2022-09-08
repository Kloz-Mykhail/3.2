import dump from 'mysqldump';

export default function makeDump() {
  dump({
    connection: {
      host: process.env.DB_HOST || '',
      user: process.env.DB_USER || '',
      password: process.env.DB_PASS || '',
      database: process.env.DB_NAME || '',
      port: +(process.env.DB_PORT || 3306),
    },
    dumpToFile: 'database/backups/dump.sql',
  });
}
