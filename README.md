sql-ecommerce-analysis

Targeted sales optimization using SQL and BigQuery

🛍️ E-Commerce Revenue Optimization: Focus on Top Category

This project explores sales data from a simulated online store using the BigQuery public dataset thelook_ecommerce, with the goal of identifying the most profitable product category and developing a targeted marketing strategy to increase company revenue.

🎯 Project Goal

Determine the product category that generates the highest revenue, analyze its seasonality and buyer demographics, and provide recommendations for when and to whom to promote it.

📌 Key Business Questions:

Which product category generates the most total revenue?

What is the seasonality of this top category — when do its sales peak?

Who are the primary buyers of this category — men or women?

What are the best months and audience segments to focus advertising efforts on this category?

🛠 Tools Used

Google BigQuery (SQL)

GitHub (for version control and documentation)

📁 Files:

queries/ — individual SQL queries related to the business questions

results/ — CSV exports of query results

screenshots/ — visual summaries (charts and tables)

README.md — project overview and objectives

summary.md — conclusions and marketing recommendations (in progress)

📊 Top Revenue Category

Description: Identifying the product category that generated the highest total revenue from completed orders.

🔍 **Query**: [top_revenue_category.sql](queries/top_revenue_category.sql)

📄 **Result**: [top_revenue_category.csv](results/top_revenue_category.csv)

📊 Top Revenue Category by year

Description: Identifying the product category that generated the highest total revenue by year from completed orders.

🔍 **Query**: [top_rev_category_by_year.sql](queries/top_rev_category_by_year.sql)

📄 **Result**: [top_rev_category_by_year.csv](results/top_rev_category_by_year.csv)

🔍 Focus Category Selection
In the initial query, we identified Outerwear & Coats as the overall top-performing category by total revenue across all years.
To gain deeper insight, we then broke down the revenue by year and observed that while Outerwear & Coats and Jeans alternate as annual leaders, Outerwear & Coats:

leads in the most recent two years (2024 and 2025),

and remains the top revenue generator across the entire dataset.

📌 Based on both cumulative and recent-year performance, we selected Outerwear & Coats as the focus category for further seasonal and demographic analysis.


