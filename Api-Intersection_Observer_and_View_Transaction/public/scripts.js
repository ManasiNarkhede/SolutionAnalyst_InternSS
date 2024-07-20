document.addEventListener("DOMContentLoaded", () => {
    const productList = document.getElementById('product-list');
    const productDetail = document.getElementById('product-detail');
    const productInfo = document.getElementById('product-info');
    const backButton = document.getElementById('back-button');
  
    // Function to display product list
    function displayProductList(products) {
      productList.innerHTML = ''; // Clear previous content
  
      products.forEach(product => {
        const productDiv = document.createElement('div');
        productDiv.classList.add('product');
        productDiv.innerHTML = `
          <img src="${product.image}" alt="${product.name}">
          <h2>${product.name}</h2>
          <p>${product.description}</p>
          <p class="price">Rs${product.price}</p>
        `;
        productDiv.addEventListener('click', () => {
          document.startViewTransition(() => {
            displayProductDetail(product); // Display product detail on click
          });
        });
        productList.appendChild(productDiv);
      });
  
      const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.classList.add('visible');
            observer.unobserve(entry.target);
          }
        });
      });
  
      document.querySelectorAll('.product').forEach(product => {
        observer.observe(product);
      });
    }
  
    // Function to display product detail
    function displayProductDetail(product) {
      productList.style.display = 'none';
      productInfo.innerHTML = `
        <img src="${product.image}" alt="${product.name}">
        <h2>${product.name}</h2>
        <p>${product.description}</p>
        <p class="price">Rs${product.price}</p>
      `;
      productDetail.classList.add('visible');
  
      // Back to Products button functionality
      backButton.addEventListener('click', () => {
        document.startViewTransition(() => {
          productDetail.classList.remove('visible');
          productList.style.display = 'flex';
          productInfo.innerHTML = ''; // Clear product detail info
        });
      });
    }
  
    // Fetch products from API
    fetch('http://localhost:3000/api/products')
      .then(response => response.json())
      .then(products => {
        displayProductList(products); // Display initial product list
      });
  });
  