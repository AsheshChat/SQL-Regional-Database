
CREATE TABLE Customers(id INTEGER PRIMARY KEY, name TEXT, email TEXT);
CREATE TABLE Orders(id INTEGER PRIMARY KEY, customer_id INTEGER, total REAL, FOREIGN KEY(customer_id) REFERENCES Customers(id));
CREATE TABLE OrderItems(id INTEGER PRIMARY KEY, order_id INTEGER, product TEXT, quantity INTEGER, price REAL, FOREIGN KEY(order_id) REFERENCES Orders(id));
SELECT c.name, SUM(o.total) total_spent FROM Customers c JOIN Orders o ON c.id=o.customer_id GROUP BY c.id;
