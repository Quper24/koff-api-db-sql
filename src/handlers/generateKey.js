import { knex } from '../app.js';

export const generateKey = async (req, res) => {
  const accessKey =
    Math.random().toString(36).substring(2, 15) +
    Math.random().toString(36).substring(2, 15);
  await knex('users').insert({
    accessKey,
    products: [],
  });
  res.json({ accessKey });
};
