import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const getOrders = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    const orderId = parseInt(req.params.id);
    const accessKey = req.headers.authorization.split(' ')[1];

    const [order] = await knex('orders').where({ id: orderId, accessKey });

    res.json(order);
  } catch (error) {
    console.error('error: ', error);
    res.status(500).json({ message: 'Ошибка при обновлении товара в корзине' });
  }
};
