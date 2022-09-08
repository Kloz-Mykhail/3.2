import { Router } from 'express';
import {
  deleteBook,
  addBook,
  getAdminBooks,
} from '../controllers/adminController';
import auth from '../helpers/auth';

const router = Router();

router.get('/admin/delete/:id', auth, deleteBook);

router.post('/admin/add', auth, addBook);

router.get('/admin', auth, getAdminBooks);

export default router;
