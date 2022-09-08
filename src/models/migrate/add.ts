import path from 'path';
import migrate from '../../helpers/migrate';

async function run() {
  await migrate(
    path.join('database', 'migrations', 'startData', '1_addBooks.sql'),
  );
  await migrate(
    path.join('database', 'migrations', 'startData', '2_addAuthors.sql'),
  );
  await migrate(
    path.join('database', 'migrations', 'startData', '3_addBook-Author.sql'),
  );
}

run();
