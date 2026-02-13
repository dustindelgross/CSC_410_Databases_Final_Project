# Welcome to my Databases Final!

## About the Project

We were split into groups and each given a fictional use case that needed a database solution, parameters, and constraints. My use case was ShopSphere, a fictional online e-commerce platform. 

The goal was to develop a database solution that would fit the requirements for the use case; in this instance, the client needed to manage information related to customers, vendors, products, orders, warehouses, and inventory. 

The project [use case description](#use-case-description) can be found below. 

## Technologies Used

We were allowed to use our choice of RDBMS solutions for the project; we were using Oracle's FreeSQL web interface to learn concepts in class, so that's what I used to build my solution.

## Use Case Description

ShopSphere, a rapidly expanding online retailer, is seeking to design and implement a robust database system to manage its complex operations. The system must support efficient product browsing and search inventory tracking, customer relationship management, and seller/vendor interactions. The database will manage information related to:

-	Customers: CustomerID, name, email, shipping address, billing address, contact information, purchase history.
-	Products: ProductID, name, description, price, category, quantity in stock, supplier information.
-	Orders: OrderID, customerID, order date, shipping address, billing address, order status, total amount, payment details.
-	Sellers/Vendors: Seller/VendorID, name, contact information, product listings, ratings, performance metrics.
-	Inventory: ProductID, quantity available, warehouse location, reorder levels.

The database should support the following functionalities and constraints:

-	Data Entry: Efficient entry and management of data across all entities.
-	Product Management: Add, update, and track product details and inventory levels.
-	Order Processing: Handle order creation, processing, tracking, payments, and returns. 
-	Search Functionality: Provide robust product search with filters (e.g., name, category, keywords).
-	Customer Management: Maintain customer profiles (Customer names, shipping and billing addresses), track order history (Using order dates), and support personalized recommendations. (Using categories for that.)
-	Seller/Vendor Management: Track seller/vendor information, product listings, and performance metrics (Performance metrics are done through aggregate select statements).
-	Inventory Management: Monitor inventory, trigger reorder alerts, and manage warehouse locations.
-	Security controls: Ensure data integrity and confidentiality through appropriate access and protection mechanisms.