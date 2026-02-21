# 🛒 E-Commerce Business Intelligence (SQL)

## 📌 Project Overview
This project demonstrates an end-to-end SQL-based Business Intelligence solution for an E-Commerce system.  
The objective is to design a relational database, generate business insights using advanced SQL queries, and implement performance optimization techniques.

The project covers database design, data modeling, analytical queries, views, stored procedures, triggers, and indexing.

---

## 🏗 Database Design

The database retail_orders_db consists of four core tables:

- *customers* – Customer information (state, segment)
- *products* – Product catalog (category, price)
- *orders* – Order-level transaction details
- *order_details* – Line-level sales and profit data

### 🔗 Relationships
- One Customer → Many Orders
- One Order → Many Order Details
- One Product → Many Order Details

Primary Keys and Foreign Keys are implemented to maintain referential integrity.

---

## 📊 Business Problems Solved

The following business insights were generated:

- ✅ Total Revenue & Total Profit
- ✅ Revenue by Customer
- ✅ Revenue by Product Category
- ✅ Customer Lifetime Value (CLV)
- ✅ Top 5 Revenue Generating Products
- ✅ Monthly Revenue Trend
- ✅ State-wise Revenue & Profit Margin
- ✅ Segment-wise Performance
- ✅ Category Performance by Segment
- ✅ Above-Average Revenue Customers (Subquery Analysis)

---

## 📈 Views Created

To support reusable reporting:

- customer_revenue_view
- state_wise_profit_margin
- monthly_revenue_view
- product_performance_view
- segment_performance_view

These views simplify BI reporting and dashboard integration.

---

## ⚙ Stored Procedures

- *GetStatePerformance()*  
  Returns revenue, profit, and margin for a given state.

- *GetOverallPerformance()*  
  Returns overall revenue, total profit, and overall profit margin.

---

## 🔐 Trigger Implementation

A validation trigger check_negative_profit was created to:

- Prevent insertion of negative profit values
- Enforce business data integrity rules

---

## 🚀 Performance Optimization

- Created index on customers.state
- Created index on orders.customer_id
- Used proper JOIN conditions and aggregations
- Applied GROUP BY, ORDER BY, and LIMIT for optimized reporting

---

## 🛠 Technologies Used

- MySQL
- SQL (DDL, DML, DQL)
- Views
- Stored Procedures
- Triggers
- Indexing
- Subqueries

---


## 🎯 Key Skills Demonstrated

- Relational Database Design
- Business Intelligence Query Writing
- Revenue & Profit Analysis
- Performance Optimization
- Data Integrity Enforcement
- Advanced SQL Concepts

---

## 📌 Conclusion

This project demonstrates practical SQL skills required for Data Analyst and SQL Developer roles.  
It simulates real-world E-Commerce business reporting and performance analysis using structured SQL solutions.

---

### 👤 Author
Vishal Shenkre  
SQL | Python | Power BI | Data Analytics
