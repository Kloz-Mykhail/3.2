import { RowDataPacket } from 'mysql2';

export interface Book extends RowDataPacket {
  id: number;
  title: string;
  year: number;
  pages: number;
  about: string;
}

export interface Author extends RowDataPacket {
  id: number;
  author: string;
}
export interface Id extends RowDataPacket {
  id: number;
}

export interface Count extends RowDataPacket {
  count: number;
}
