import path from 'path';
import migrate from '../../helpers/migrate';

async function run() {
  await migrate(path.join('database', 'migrations', 'up', '1_initial_up.sql'));
  await migrate(
    path.join('database', 'migrations', 'up', '2_lotAuthors_up.sql'),
  );
  await migrate(path.join('database', 'migrations', 'up', '3_deleted_up.sql'));
}

run();
