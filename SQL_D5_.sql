-- 26 May
CREATE TABLE Product1 (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
QuantityInStock INT,
    Price DECIMAL(10, 2),
    Manufacturer VARCHAR(100)
);

INSERT INTO Product1 (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)
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

SELECT * FROM PRODUCT1;

-- INSERT QUESTIONS
-- 1.	Insert a new product: "Electric Kettle" in category "Appliances" with 30 units, price ₹999.00, manufactured by "Prestige".
INSERT INTO PRODUCT1(ProductName,Category,QuantityInStock,Price,Manufacturer)
VALUES("Electric Kettle", "Appliances", 30, 999.00, "Prestige");  -- RECORD not inserted because ID is not given

-- 2.	Add a product: "Yoga Mat" under "Fitness" category with stock "Fitness", price ₹599.00, and manufacturer "Decathlon".
INSERT INTO PRODUCT1(ProductName,Category,QuantityInStock,Price,Manufacturer)
VALUES("Yoga Mat", "Fitness", 50, 599.00, "Decathlon");  -- RECORD not inserted because ID is not given

-- 3.	Add a new clothing item "Jacket", category "Clothing", stock 45, price ₹2499.00, manufacturer "Woodland".
INSERT INTO PRODUCT1(ProductName,Category,QuantityInStock,Price,Manufacturer)
VALUES("Jacket", "Clothing", 45, 2499.00, "Woodland");  -- RECORD not inserted because ID is not given

-- 4.	Insert a product without specifying the CreatedDate, and observe the default value behavior.


-- 5.	Try inserting a product with a duplicate ProductID. What happens?
INSERT INTO PRODUCT1(ProducTID)
VALUES(1);     -- (error) Because ProductID is primary key (primary key can not duplicate)

-- 6.	Insert a product with NULL as Category for a generic item called "Multi-Purpose Cleaner".
INSERT INTO PRODUCT1(PRODUCTID,ProductName,Category)
VALUES(16,"Multi-Purpose Cleaner",NULL);  -- YES it is run

-- 7.	Insert a record with a negative QuantityInStock. What does SQL do?
INSERT INTO PRODUCT1(QuantityInStock)
VALUES(-17);   -- YES record is inserted because datatype of QuantityInStock is INT

-- 8.	Add a new product “Wireless Charger” with NULL in Manufacturer on ProductID 17, is it allowed?
INSERT INTO PRODUCT1(ProductID, ProductName, Manufacturer)
VALUES(17,"Wireless Charger",NULL);  -- YES it is run

-- 9.	Insert multiple new products in a single INSERT statement.
INSERT INTO PRODUCT1(ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)
VALUES(18,"TV","Electronics",12,30000.00,"Sony"),(19,"Laptop","Electronics",18,23000.00,"HP");  -- YES it is run