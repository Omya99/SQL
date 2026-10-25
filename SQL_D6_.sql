-- 28 MAY
USE FEBJAVA;
CREATE TABLE Product2 (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
QuantityInStock INT,
    Price DECIMAL(10, 2),
    Manufacturer VARCHAR(100)
);

INSERT INTO Product2 (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)
VALUES
(1, 'Wireless Mouse', 'Electronics', 150, 599.99, 'Logitech'),
(2, 'Bluetooth Speaker', 'Electronics', 80, 1299.50, 'Sony'),
(3, 'Running Shoes', 'Footwear', 60, 3499.00, 'Nike'),
(4, 'T-Shirt', 'Clothing', 200, 499.00, 'Puma'),
(5, 'Washing Machine', 'Appliances', 20, 23999.99, 'Samsung'),
(6, 'Smartphone', 'Electronics', 100, 18999.00, 'Realme'),
(7, 'Backpack', 'Accessories', 75, 1199.00, 'Wildcraft'),
(8, 'LED Bulb Pack', 'Home Essentials', 300, 299.00, 'Philips'),
(9, 'Keyboard', 'Electronics', 95, 999.00, 'HP'),
(10, 'Water Bottle', 'Kitchenware', 180, 249.00, 'Milton'),
(11, 'Wrist Watch', 'Accessories', 40, 2099.00, 'Fastrack'),
(12, 'Laptop Stand', 'Office Supplies', 50, 1499.00, 'AmazonBasics'),
(13, 'Hair Dryer', 'Personal Care', 25, 1799.00, 'Panasonic'),
(14, 'Microwave Oven', 'Appliances', 15, 10999.00, 'IFB'),
(15, 'Jeans', 'Clothing', 90, 1599.00, 'Levis');

SELECT * FROM PRODUCT2;

-- ------------------------------------------------------------------------------------
 -- UPDATE Questions
 
-- 1.	Update the price of “Smartphone” to ₹17999.00.
UPDATE PRODUCT2 SET PRICE=17999.00 WHERE ProductName="Smartphone";

-- 2.	Increase the stock of “LED Bulb Pack” by 50 units.
UPDATE PRODUCT2 SET QuantityInStock=QuantityInStock+50 WHERE ProductName="LED Bulb Pack";

-- 3.	Change the Manufacturer of all “Clothing” products to “Zara”.
UPDATE PRODUCT2 SET Manufacturer="ZARA" WHERE Category="Clothing";

-- 4.	Apply a 10% discount on all “Electronics” category products.
UPDATE PRODUCT2 SET Price=Price-(Price*0.10)  WHERE Category="Electronics";

-- 5.	Set QuantityInStock to 0 for “Hair Dryer”.
UPDATE PRODUCT2 SET QuantityInStock=0 WHERE ProductName="Hair Dryer";

-- 6.	Update the Category of "Water Bottle" from "Kitchenware" to "Travel Essentials".
UPDATE PRODUCT2 SET Category="Travel Essentials" WHERE ProductName="Water Bottle";

-- 7.	Rename the product “Washing Machine” to “Front Load Washing Machine”.
UPDATE PRODUCT2 SET ProductName="Front Load Washing Machine" WHERE ProductName="Washing Machine";

-- 8.	Update the Price of all products above ₹10,000 by reducing ₹500.
UPDATE PRODUCT2 SET PRICE=PRICE-500 WHERE PRICE>10000;

-- ----------------------------------------------------------------------------------
-- DELETE Questions

-- 1. Delete the product with ProductID = 13.
DELETE FROM PRODUCT2 WHERE ProductID = 13;

-- 2. Delete all products with stock less than 20 units.
DELETE FROM PRODUCT2 WHERE QuantityInStock < 20;
