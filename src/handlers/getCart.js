import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const getCart = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    let totalPrice = 0;
    const accessKey = req.headers.authorization.split(' ')[1];
    const cartItems = await knex('users')
      .where({ accessKey })
      .first()
      .select('products');
    const idCartProducts = cartItems.products.map(item => item.productId);

    const products = await knex('goods').whereIn('id', idCartProducts);

    const cartProductItems = products.map(product => {
      const item = cartItems.products.find(
        item => item.productId === product.id,
      );
      totalPrice += item.quantity * product.price;
      return { ...product, ...item };
    });

    res.json({
      products: cartProductItems,
      totalPrice,
      totalCount: cartProductItems.length,
    });
  } catch (error) {
    console.log('error: ', error);
    res
      .status(500)
      .json({ message: 'Ошибка при получении информации о корзине' });
  }
};
