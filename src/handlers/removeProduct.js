import fs from 'node:fs/promises';
import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const removeProduct = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  const productId = req.params.id;

  const product = await knex('goods').where({ id: productId });

  const images = product[0].images;

  await Promise.all(
    images.map(async image => {
      await fs.unlink(`${image}`);
    }),
  )
    .then(() => {
      console.log('удалены файлы изображения');
    })
    .catch(err => {
      console.log(err);
    });

  const deleteCount = await knex('goods').where({ id: productId }).delete();

  if (deleteCount === 0) {
    res.status(404).json({ message: 'Товар не найден' });
    return;
  }

  res.json({ message: 'Товар удален' });
};
