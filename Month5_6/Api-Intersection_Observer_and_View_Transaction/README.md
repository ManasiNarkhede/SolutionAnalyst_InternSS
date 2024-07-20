# Dummy Amazon API 

This project is a dummy Amazon API integrated with the Intersection Observer API and the View Transitions API. It showcases a list of products with detailed views and transitions.

## Steps to run the project
1. Navigate to the project directory:
    cd dummy-amazon-api
2. Install the dependencies:
    npm install
3. Start the Node.js server:
    node server.js
4. Follow the link to open the Project:
    http://localhost:3000


## Project Functionality
1. Product List
    - Displays a list of products with their images, names, descriptions, and prices.
    - Products are fetched from the dummy API created in server.js.

2. Product Detail
    - Clicking on a product displays detailed information about the product.
    - Includes a "Back to Products" button at the end of the product detail view to navigate back to the product list.

3. Intersection Observer API
    - Used to lazy-load the products as they come into view, improving performance.

4. View Transitions API
    - Provides smooth transitions between the product list and the product detail views.

## Directory Structure
1. server.js
This file contains the Node.js server setup and a dummy API that provides product data.

2. public/index.html
This is the main HTML file that displays the product list and product details.

3. public/styles.css
This file contains the CSS styles for the project.

4. public/scripts.js
This file contains the JavaScript logic for fetching products, displaying them, and handling view transitions.

5. public/images/
This directory contains the images used for the products.

