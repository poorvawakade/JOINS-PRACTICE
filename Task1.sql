CREATE DATABASE Shope;
USE Shope;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);


INSERT INTO Customers (CustomerID, Name, City) VALUES
(1, 'Alice', 'Mumbai'),
(2, 'Bob', 'Pune'),
(3, 'Charlie', 'Delhi'),
(4, 'David', 'Bangalore');


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Orders (OrderID, CustomerID, Product) VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 3, 'Tablet'),
(104, 4, 'Monitor'); 

SELECT * FROM shope.orders;
SELECT * FROM shope.customers;

/*INNER JOIN*/

SELECT Customers.CustomerID, Customers.Name, Customers.City, 
       Orders.OrderID, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/*LEFT JOIN*/

SELECT Customers.CustomerID, Customers.Name, Customers.City, 
       Orders.OrderID, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/*RIGHT JOIN*/

SELECT Customers.CustomerID, Customers.Name, Customers.City, 
       Orders.OrderID, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

/*FULL JOIN (Using UNION)*/

SELECT Customers.CustomerID, Customers.Name, Customers.City, 
       Orders.OrderID, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerID, Customers.Name, Customers.City, 
       Orders.OrderID, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

