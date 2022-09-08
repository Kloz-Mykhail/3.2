import express from 'express';
import cors from 'cors';
import path from 'path';
import { engine } from 'express-handlebars';
import fileUpload from 'express-fileupload';
import * as dotenv from 'dotenv';
import userRouter from './routers/userRouter';
import adminRouter from './routers/adminRouter';
import start from './models/cron';

dotenv.config();
start();

const app = express();
const PORT = 3000;
app.engine(
  'hbs',
  engine({
    extname: 'hbs',
    helpers: {
      increment(number: number) {
        return number + 1;
      },
      decrement(number: number) {
        return number - 1;
      },
    },
  }),
);
app.set('view engine', 'hbs');
app.set('views', path.join('views'));

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(
  fileUpload({
    createParentPath: true,
  }),
);

app.use(express.static('static'));

app.use(userRouter);
app.use(adminRouter);

app.use((req, res) => {
  res.status(404).render('error-page', { error: '404 not found' });
});

app.listen(+(process.env.PORT || PORT), () => {
  console.log(`Port ${process.env.PORT}`);
});
