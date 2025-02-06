# README - SQL Data Analysis for Assesment Test for Craftsperson Incubyte

## Overview
This document contains SQL queries for analyzing the `assessment_dataset01` dataset from the `interview` database. The dataset has been processed to ensure date formats are in `YYYY-MM-DD`, but blank values remain as they may be relevant to the analysis. Queries focus on customer behavior, sales trends, and business performance metrics.

## Data Preparation
- Date format standardized to `YYYY-MM-DD`.
- Missing values handled using `NOT NULL` conditions where necessary.
- Data imported using Table Data Import Wizard or the `LOAD` command.
- Connection issues resolved using the command prompt.

## Key SQL Queries
- **Total Unique Customers**: Count of distinct customers. - 30100
- **Total Revenue**: Sum of all transaction amounts. - 1051419789.0699886
- **Average Transaction Amount**: Average amount spent per transaction. - 20312.58
- **Number of Transactions per City**: Transactions grouped by city. - Kolkata	5326, Lucknow	5206, Jaipur	5094, Pune	5253, Ahmedabad	5053, Delhi	5292, Hyderabad	5164, Mumbai	5143, Chennai	5107, Bangalore	5124
- **Total Customers by Gender**: Count of customers by gender. -  Male	15477, Other	15580, Female	15501, BLANKS	5204
- **Latest Transaction Date**: Most recent transaction date. - 2022-02-05
- **Highest Discount Given**: Maximum discount percentage. - 50%
- **Best-Selling Products**: Top 10 products by sales count. - SALES count - Apple	9425, Sofa	9356, T-Shirt	9340, Laptop	9224, Notebook	9213
- **Total Sales by Store Type**: Sales revenue by store type. - In-Store	525320714.62, Online	521348844.35, Blanks 4750230.09
- **Most Used Transaction Method**: Count of transactions per payment method. - UPI	11751, Debit Card	11674, Credit Card	11596, Cash	11537, Blanks 5204
- **Revenue by Region**: Revenue generated in different regions. - South	322697359.45999986, East	276841713.7600002, West	224591643.92999953, North	223228408.54999924, Blanks 4060663.3700000155
- **Feedback Score by Product**: Average feedback scores for each product. - avg feedback of products
- **Spending by Age Group**: Customer spending segmented by age group. - 50+	441881370.1100012, 36-50	270660606.51999956, 26-35	187971498.98000038, 18-25	150906313.4599996
- **Lowest/Highest Sales Day**: Identifies the day with the lowest or highest sales. - 2022-02-05	21958829.619999986
- **Daily Sales Trend**: Revenue trends over time. - 
- **Loyalty Points Analysis**: Top 5 customers with the highest loyalty points.
- **Shipping Cost Analysis**: Maximum shipping cost recorded. - 2499.73
- **Cities with Fastest Delivery**: Cities ranked by average delivery time. Bangalore	5.1411, Ahmedabad	5.1928

## Key Insights
- **Customer Base**: There is a distinct number of unique customers making purchases.
- **Revenue Generation**: Overall revenue is driven by transaction amounts and store types.
- **Product Performance**: Some products sell significantly more than others.
- **Payment Preference**: Certain payment methods are more frequently used. UPI, Debit card, credit card
- **Regional Performance**: Some regions contribute more to sales than others. south
- **Customer Satisfaction**: Feedback scores indicate product reception. 
- **Demographic Trends**: Spending habits vary across different age groups. 
- **Sales Patterns**: Some days see significantly higher/lower sales. 
- **Loyalty Engagement**: High-loyalty customers contribute significantly to business.
- **Logistics Performance**: Shipping costs and delivery speeds vary across cities. 

This SQL analysis provides valuable insights into customer behavior, sales trends, and operational efficiency to help guide business decisions.

