import { knex } from '../app.js';
import { checkAccessKey } from './checkAccessKey.js';

export const addOrders = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  try {
    const { name, address, phone, email, deliveryType, paymentType, comments } =
      req.body;

    if (!name || !phone || !deliveryType || !paymentType) {
      res.status(400).json({
        message: 'Имя, телефон, способ оплаты и доставки обязательны',
      });
      return;
    }

    if (deliveryType === 'delivery' && !address) {
      res.status(400).json({ message: 'Укажите адрес доставки' });
      return;
    }

    const accessKey = req.headers.authorization.split(' ')[1];

    const productsData = await knex('goods');

    const cartItems = await knex('users')
      .where({ accessKey })
      .first()
      .select('products');

    if (cartItems.products.length === 0) {
      res.status(400).json({ message: 'Корзина пуста' });
      return;
    }

    const productCarts = productsData.filter(product =>
      cartItems.products.find(item => item.productId === product.id),
    );

    const totalPrice = productCarts.reduce((sum, product) => {
      const quantity = cartItems.products.find(
        item => item.productId === product.id,
      ).quantity;

      return sum + product.price * quantity;
    }, 0);

    const insertedOrder = await knex('orders').returning('id').insert({
      name,
      address,
      phone,
      email,
      deliveryType,
      paymentType,
      accessKey,
      products: cartItems.products,
      totalPrice,
      comments,
    });

    const orderId = insertedOrder[0];

    console.log(await knex('orders'));
    await knex('users').where({ accessKey }).update({
      products: [],
    });

    console.log(await knex('users'));

    res.json({ orderId: orderId.id, message: 'Новый заказ успешно добавлен' });
  } catch (error) {
    console.error('error: ', error);
    res.status(500).json({ message: 'Ошибка при отправке заказа' });
  }
};
