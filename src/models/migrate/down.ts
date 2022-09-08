import path from 'path';
import migrate from '../../helpers/migrate';

async function run() {
  await migrate(
    path.join('database', 'migrations', 'down', '3_deleted_down.sql'),
  );
  await migrate(
    path.join('database', 'migrations', 'down', '2_lotAuthors_down.sql'),
  );
  await migrate(
    path.join('database', 'migrations', 'down', '1_initial_down.sql'),
  );
}

run();
