import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const removeProductCart = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    const productId = parseInt(req.params.id);
    const accessKey = req.headers.authorization.split(' ')[1];

    const currentProducts = await knex('users')
      .where({ accessKey })
      .first()
      .select('products');

    const productsArray = currentProducts.products;

    const productIndex = productsArray.findIndex(
      product => product.productId === productId,
    );

    if (productIndex !== -1) {
      productsArray.splice(productIndex, 1);

      await knex('users').where({ accessKey }).update({
        products: productsArray,
      });
      res.status(200).json({
        id: productId,
        totalCount: productsArray.length,
        message: 'Товар удален из корзины',
      });
      return;
    }

    res.status(404).json({ message: 'Товар не найден в корзине' });
  } catch (error) {
    console.error('error: ', error);
    res.status(500).json({ message: 'Ошибка при обновлении товара в корзине' });
  }
};
