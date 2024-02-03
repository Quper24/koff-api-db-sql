import { knex } from '../app.js';
import { shuffle } from '../shuffle.js';
import { checkAccessKey } from './checkAccessKey.js';

export const getProducts = async (req, res) => {
  if (!(await checkAccessKey(req, res))) {
    return;
  }

  const productId = parseInt(req.params.id);

  if (productId) {
    const [product] = await knex('goods').where({ id: productId });
    if (!product) {
      res.status(404).json({ message: 'Product not found' });
      return;
    }

    res.json(product);
    return;
  }

  const { page, limit, list, category, q, search } = req.query;

  const pageNumber = parseInt(page) || 1;
  const limitNumber = parseInt(limit) || 12;

  let productsData = [];

  if (!list && !category && !search && !q) {
    productsData = await knex('goods');
    const randomProducts = shuffle(productsData).slice(0, limitNumber);
    res.json(randomProducts);
    return;
  }

  if (list) {
    const productList = list.split(',');
    productsData = await knex('goods').whereIn('id', productList);
  }

  if (category) {
    productsData = await knex('goods').where({ category });
  }

  if (search || q) {
    const searchQuery = `%${q || search}%`;
    productsData = await knex('goods').where(
      'name',
      'ilike',
      `%${searchQuery}%`,
    );
  }

  const startIndex = (pageNumber - 1) * limitNumber;
  const endIndex = pageNumber * limitNumber;

  const paginatedProducts = productsData.slice(startIndex, endIndex);

  const totalPages = Math.ceil(productsData.length / limitNumber);
  const totalProducts = productsData.length;

  const paginationInfo = {
    currentPage: pageNumber,
    totalPages,
    totalProducts,
    limit: limitNumber,
  };

  const response = {
    data: paginatedProducts,
    pagination: paginationInfo,
  };
  res.json(response);
};
