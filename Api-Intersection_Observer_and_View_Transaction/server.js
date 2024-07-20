const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;


app.use(express.static(path.join(__dirname, 'public')));

app.get('/api/products', (req, res) => {
  const products = [
    { id: 1, name: 'Mobile', price: 11999, description: 'High-end smartphone with all the latest features.', image: 'images/mobile.jpeg' },
    { id: 2, name: 'Laptop', price: 33999, description: 'Powerful laptop suitable for all your work and entertainment needs.', image: 'images/laptop.jpeg' },
    { id: 3, name: 'Headphones', price: 199, description: 'Noise-cancelling over-ear headphones with superior sound quality.', image: 'images/headphones.jpeg' },
    { id: 4, name: 'Charger', price: 29, description: 'Fast-charging USB-C charger for all your devices.', image: 'images/charger.jpeg' },
    { id: 5, name: 'Powerbank', price: 499, description: 'High-capacity powerbank to keep your devices charged on the go.', image: 'images/powerbank.jpeg' },
    { id: 6, name: 'Pendrive', price: 359, description: 'Conveniently pocket sized Pendrive for easy portability.', image: 'images/pendrive.jpeg'  }
  ];
  res.json(products);
});

// Serve the main HTML file
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});

