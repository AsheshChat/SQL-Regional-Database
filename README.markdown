# 📊 SQL-Based Relational Database Project

A relational database system modeling a **customer–order management workflow**, demonstrating schema design, table creation with foreign keys, and SQL queries for meaningful insights.

---

## ✨ Overview

This project implements a relational database to track:
- **Customers** and their details
- **Orders** placed by each customer
- **Individual items** within each order

It includes an **aggregate query** to calculate the total amount spent by each customer.

---

## 🛠️ Schema Design

### Tables

#### Customers
```sql
CREATE TABLE Customers(
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
);
```

#### Orders
```sql
CREATE TABLE Orders(
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    total REAL,
    FOREIGN KEY(customer_id) REFERENCES Customers(id)
);
```

#### OrderItems
```sql
CREATE TABLE OrderItems(
    id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product TEXT,
    quantity INTEGER,
    price REAL,
    FOREIGN KEY(order_id) REFERENCES Orders(id)
);
```

---

## ✨ Features Demonstrated
- Relational schemas with **primary and foreign keys**
- **Multi-table joins** to combine customer and order data
- **Aggregate queries** (SUM, GROUP BY) for analysis

---

## 🚀 Setup & Installation
1. Ensure a SQL engine is installed (e.g., SQLite, MySQL, PostgreSQL)
2. Save the schema as `customer_order.sql`
3. Load the schema into your SQL engine:
   - For **SQLite**:
     ```sql
     sqlite3 customer_order.db < customer_order.sql
     ```
   - For **MySQL**:
     ```sql
     mysql -u username -p customer_order < customer_order.sql
     ```
   - For **PostgreSQL**:
     ```sql
     psql -U username -d customer_order -f customer_order.sql
     ```

---

## 🎯 Usage
1. Open your SQL engine or client
2. Load the `customer_order.sql` script
3. Explore tables: `Customers`, `Orders`, `OrderItems`
4. Run queries, such as:
   - Joining tables to retrieve order details
   - Aggregating data to calculate total spending per customer

---

## 📜 License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.