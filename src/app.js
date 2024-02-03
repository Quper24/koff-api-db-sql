import express from 'express';
import cors from 'cors';
import { default as Knex } from 'knex';
import multer from 'multer';

import { addProduct } from './handlers/addProduct.js';
import { getProducts } from './handlers/getProducts.js';
import { generateKey } from './handlers/generateKey.js';
import { removeProduct } from './handlers/removeProduct.js';
import { getCategories } from './handlers/getCategories.js';
import { getCart } from './handlers/getCart.js';
import { addProductCart } from './handlers/addProductCart.js';
import { removeProductCart } from './handlers/removeProductCart.js';
import { addOrders } from './handlers/addOrders.js';
import { getOrders } from './handlers/getOrders.js';

export const knex = Knex({
  client: 'pg',
  connection: {
    host: process.env.DB_HOST, // Используйте переменную окружения для хоста
    user: process.env.DB_USER, // Используйте переменную окружения для пользователя
    password: process.env.DB_PASSWORD, // Используйте переменную окружения для пароля
    database: process.env.DB_NAME, // Используйте переменную окружения для имени БД
  },
});

const storage = multer.diskStorage({
  destination(req, file, cb) {
    cb(null, 'public/img');
  },
  filename(req, file, cb) {
    const filename = `${Date.now().toString(32).substring(0, 8)}${Math.random()
      .toString(32)
      .substring(2, 10)}.${file.originalname.split('.').pop()}`;
    cb(null, filename);
  },
});

const fileFilter = (req, file, cb) => {
  if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
    cb(null, true);
  } else {
    cb(new Error('Разрешены только файлы в форматах JPEG и PNG'), false);
  }
};

const upload = multer({ storage, fileFilter });

const app = express();
app.use(express.static('public'));
app.use(express.json());
app.use(
  cors({
    origin: '*',
  }),
);

app.get('/api/users/accessKey', generateKey);
app.get('/api/products', getProducts);
app.get('/api/products/:id', getProducts);
app.delete('/api/products/:id', removeProduct);
app.get('/api/productCategories', getCategories);
app.get('/api/cart', getCart);
app.post('/api/cart/products', addProductCart);
app.put('/api/cart/products', addProductCart);
app.delete('/api/cart/products/:id', removeProductCart);
app.post('/api/orders', addOrders);
app.get('/api/orders/:id', getOrders);
app.post('/api/products', upload.array('images', 8), addProduct);

export default app;
