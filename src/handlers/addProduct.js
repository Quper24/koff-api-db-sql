import fs from 'node:fs/promises';
import { knex } from '../app.js';

export const addProduct = async (req, res) => {
  console.log('req: ', req);
  const authorizationHeader = req.headers.authorization;
  const accessKey = authorizationHeader.split(' ')[1];

  if (!authorizationHeader) {
    res.status(401).json({ message: 'Missing Authorization header' });
    return;
  }

  if (accessKey !== 'Quper24') {
    res.status(401).json({ message: 'Invalid Authorization' });
    return;
  }

  const { name, price, characteristics, category } = req.body;
  console.log('name: ', name);

  const images = req.files.map(file => `/img/${file.filename}`);
  // Проверка наличия файла изображения
  if (!images.length) {
    return res.status(400).send('Файл изображения не найден');
  }

  // Проверка наличия обязательных полей
  if (!name || !price || !characteristics.length || !category) {
    // удалить файлы изображения
    await Promise.all(
      images.map(async image => {
        await fs.unlink(`${image}`);
      }),
    ).then(() => {
      console.log('удалены файлы изображения');
    });

    return res.status(400).send('Не все обязательные поля заполнены');
  }

  try {
    const newProduct = {
      article: `${Date.now().toString(10).substring(0, 5)}${Math.random()
        .toString(10)
        .substring(2, 8)}`,
      name,
      price: parseInt(price),
      characteristics,
      images,
      category,
    };

    // Отправка newProduct в базу данных
    await knex
      .insert({
        ...newProduct,
        characteristics: JSON.parse(newProduct.characteristics),
      })
      .into('goods');

    console.log('newProduct.characteristics', newProduct);
    res.send('Новый товар успешно добавлен');
  } catch (error) {
    console.error(error);
    res.status(500).send('Ошибка сервера');
  }
};
