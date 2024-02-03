import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const getCategories = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    const categories = await knex('goods')
      .distinct('category')
      .pluck('category');
    res.json(categories);
  } catch (error) {
    res.status(500).json({ message: 'Ошибка при получении категорий' });
  }
};
