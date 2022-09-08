import path from 'path';

export default function getPathToImg(bookId: number): string {
  return path.join('static', 'img', 'books', `${bookId}.jpg`);
}
