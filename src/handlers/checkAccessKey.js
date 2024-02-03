import { knex } from '../app.js';

export const checkAccessKey = async (req, res) => {
  const authorizationHeader = req.headers.authorization;
  const accessKey = authorizationHeader.split(' ')[1];

  if (!authorizationHeader) {
    res.status(401).json({ message: 'Missing Authorization header' });
    return false;
  }

  const user = await knex.select().from('users');
  const itAuthorized = user.some(item => item.accessKey === accessKey);

  if (!itAuthorized) {
    res.status(401).json({ message: 'Invalid Authorization' });
    return false;
  }

  return true;
};
