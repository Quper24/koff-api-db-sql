import fs from 'node:fs/promises';
import path from 'path';
export const getImage = async (req, res) => {
  const imageName = req.params.imageName;
  const imagePath = path.join('img', imageName);
  console.log('imagePath: ', imagePath);

  try {
    const image = await fs.readFile(imagePath);
    res.setHeader('Content-Type', 'image/*');
    res.send(image);
  } catch (error) {
    res.status(404).send('Image not found');
  }
};
