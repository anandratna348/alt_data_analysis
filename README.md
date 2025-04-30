## 📊 Overview

This project addresses the data analysis assignment for Alt Mobility's Data Analyst Internship. The goal is to extract insights from order and payment data using SQL and visualize customer retention trends using Python and Excel.

---

## 🗂️ Dataset Description

1. **customer_orders.csv**  
   - Contains order details like `order_id`, `customer_id`, `order_date`, `order_amount`, `shipping_address`, `order_status`.

2. **payments.csv**  
   - Contains payment details like `payment_id`, `order_id`, `payment_date`, `payment_amount`, `payment_method`, `payment_status`.

---

## Tasks & Approach

### 1. Order and Sales Analysis
- Used SQL queries to calculate:
  - Total number of orders and revenue by `order_status`
  - Overall revenue and average order value
  - Orders not delivered
- Purpose: Understand fulfillment efficiency and revenue trends.

### 2. Customer Analysis
- Identified:
  - Customers with multiple orders (loyalty)
  - One-time vs. repeat customers
  - Total revenue contribution by customer segment
- Purpose: Segment customers and assess lifetime value.

### 3. Payment Status Analysis
- Analyzed payment success vs. failure based on order status.
- Calculated:
  - Number of failed payments by order status
  - Total and average payment amount for failed payments
  - Total successful payments and revenue received
- Purpose: Evaluate transaction reliability and revenue loss due to failures.

### 4. Order Details Report
- Joined `orders` and `payments` tables to present a unified view of:
  - Order ID, Customer ID, Status, Amount
  - Payment Status, Payment Amount, Date
- Purpose: Provide a complete view of transactions for operational reporting.

### 5. Customer Retention Visualization
- Tracked customers who ordered 2 or more times across months.
- Used Python (pandas + seaborn) to visualize monthly retention trends.
- Provided explanation for insights in the summary document.
- **Alternative**: Also shared guidance for building the same in Excel.

---

## Visualizations

- Customer retention over time using bar plots
- Highlighted repeat buyers per month

---

## Summary of Findings

See the `Summary_of_Findings.pdf` or `.docx` in the repo for:
- Key SQL insights
- Retention patterns
- Recommendations for Alt Mobility to improve customer loyalty, order fulfillment, and payment processing.

---

## Tools Used

- SQL Run in colab
- Python (pandas, seaborn, matplotlib)
- Excel (for optional BI visualization)
- Google Colab (for execution and exploration)

---

## Recommendation Highlights

- Focus on reducing failed payments for pending and shipped orders.
- Retention efforts should target one-time customers to increase loyalty.
- Automate alerting for failed transactions to improve payment success.
