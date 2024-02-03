import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const addProductCart = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    const { productId, quantity } = req.body;
    if (!productId || !quantity) {
      res.status(400).json({ message: 'Некорректные данные' });
      return;
    }
    const accessKey = req.headers.authorization.split(' ')[1];

    const { products } = await knex('users')
      .where({ accessKey })
      .first()
      .select('products');

    const productIndex = products.findIndex(
      product => product.productId === productId,
    );

    if (productIndex === -1) {
      products.push({ productId, quantity });
      await knex('users').where({ accessKey }).update({
        products,
      });

      const [product] = await knex('goods').where({ id: productId });
      res.json({
        product,
        totalCount: products.length,
        message: 'Товар добавлен в корзину',
        productCart: { productId, quantity }
      });
      return;
    }

    if (quantity === 0) {
      products.splice(productIndex, 1);

      await knex('users').where({ accessKey }).update({
        products,
      });
      res.json({
        totalCount: products.length,
        message: 'Товар удален из корзины',
      });
      return;
    }

    products[productIndex].quantity = quantity;

    await knex('users').where({ accessKey }).update({
      products,
    });
    res.json({
      totalCount: products.length,
      message: 'Товар обновлен в корзине',
      productCart: { productId, quantity }
    });
  } catch (error) {
    console.error('error: ', error);
    res.status(500).json({ message: 'Ошибка при обновлении товара в корзине' });
  }
};
