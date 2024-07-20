const express = require('express');
const app = express();
const port = 3000;

const products = [
  { id: 1, name: 'Mobile', price: 11999, description: 'High-end smartphone with all the latest features.', image: 'images/mobile.jpeg' },
  { id: 2, name: 'Laptop', price: 33999, description: 'Powerful laptop suitable for all your work and entertainment needs.', image: 'images/laptop.jpeg' },
  { id: 3, name: 'Headphones', price: 199, description: 'Noise-cancelling over-ear headphones with superior sound quality.', image: 'images/headphones.jpeg' },
  { id: 4, name: 'Charger', price: 29, description: 'Fast-charging USB-C charger for all your devices.', image: 'images/charger.jpeg' },
  { id: 5, name: 'Powerbank', price: 499, description: 'High-capacity powerbank to keep your devices charged on the go.', image: 'images/powerbank.jpeg' },
  { id: 6, name: 'Pendrive', price: 359, description: 'Conveniently pocket sized Pendrive for easy portability.', image: 'images/pendrive.jpeg'  }
];

app.use(express.static('public'));

app.get('/api/products', (req, res) => {
  res.json(products);
});

app.listen(port, () => {
  console.log(`Dummy Amazon API listening at http://localhost:${port}`);
});

