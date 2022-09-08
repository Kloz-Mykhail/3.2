import { Router } from 'express';
import {
  getBookById,
  getBooks,
  incrementCount,
} from '../controllers/userContoller';

const router = Router();

router.get('/books/:id', getBookById);

router.get('/', getBooks);

router.post('/count', incrementCount);

export default router;
