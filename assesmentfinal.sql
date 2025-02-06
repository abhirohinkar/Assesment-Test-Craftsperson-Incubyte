-- NOTE Data cleaning in terms of date format YYYY-MM-DD done in excel file only, havent removed blanks as the key parameters or analysis might affect,
-- we can use NOT NULL for excluding those blanks. 
-- Data updation by Table data import wizard or using Load command and creating table manually. initially had issue with host connection but solved by using cmd prompt. 


SELECT * FROM interview.assessment_dataset01;

-- Total Unique Customers
SELECT COUNT(DISTINCT CustomerID) AS UniqueCustomers FROM interview.assessment_dataset01;

-- Total Revenue
SELECT SUM(TransactionAmount) AS TotalRevenue FROM interview.assessment_dataset01;

-- Average Transaction Amount
SELECT AVG(TransactionAmount) AS AvgTransaction FROM interview.assessment_dataset01;

-- Number of Transactions per City
SELECT City, COUNT(*) AS TransactionCount FROM interview.assessment_dataset01 GROUP BY City;

-- Total Customers by Gender
SELECT CustomerGender, COUNT(*) AS Count FROM interview.assessment_dataset01 GROUP BY CustomerGender;


-- Latest Transaction Date
SELECT MAX(TransactionDate) AS LatestTransaction FROM interview.assessment_dataset01;

-- Highest Discount Given
SELECT MAX(DiscountPercent) AS MaxDiscount FROM interview.assessment_dataset01;

-- Best-Selling Products
SELECT ProductName, COUNT(TransactionID) AS SalesCount
FROM interview.assessment_dataset01
WHERE ProductName IS NOT NULL
GROUP BY ProductName
ORDER BY SalesCount DESC
LIMIT 10;

-- Total sales by type os store. 
SELECT StoreType, SUM(TransactionAmount) AS TotalSales
FROM interview.assessment_dataset01
GROUP BY StoreType
ORDER BY TotalSales DESC;

-- Most transaction method used, count
SELECT PaymentMethod, COUNT(*) AS TransactionCount
FROM interview.assessment_dataset01
GROUP BY PaymentMethod
ORDER BY TransactionCount DESC; 


-- Revenue by Region
SELECT Region, SUM(TransactionAmount) AS TotalRevenue
FROM interview.assessment_dataset01
WHERE Region IS NOT NULL
GROUP BY Region
ORDER BY TotalRevenue DESC;

-- Feedback Score by Product
SELECT ProductName, AVG(FeedbackScore) AS AvgFeedbackScore
FROM interview.assessment_dataset01
WHERE FeedbackScore IS NOT NULL
GROUP BY ProductName
ORDER BY AvgFeedbackScore DESC;

-- Spending by Age Group
SELECT CASE 
           WHEN CustomerAge BETWEEN 18 AND 25 THEN '18-25'
           WHEN CustomerAge BETWEEN 26 AND 35 THEN '26-35'
           WHEN CustomerAge BETWEEN 36 AND 50 THEN '36-50'
           ELSE '50+' 
       END AS AgeGroup,
       SUM(TransactionAmount) AS TotalSpending
FROM interview.assessment_dataset01
WHERE CustomerAge IS NOT NULL
GROUP BY AgeGroup
ORDER BY TotalSpending DESC;


-- Lowest / highest Sales Day
SELECT TransactionDate, SUM(TransactionAmount) AS TotalSales
FROM interview.assessment_dataset01
GROUP BY TransactionDate
ORDER BY TotalSales ASC        -- Desc for highest.
LIMIT 1;

-- Daily Sales Trend
SELECT TransactionDate, SUM(TransactionAmount) AS DailyRevenue
FROM interview.assessment_dataset01
GROUP BY TransactionDate
ORDER BY TransactionDate;

-- Loyalty Points Analysis - Top 5 Customers with Highest Loyalty Points
SELECT CustomerID, SUM(LoyaltyPoints) AS TotalLoyaltyPoints
FROM interview.assessment_dataset01
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY TotalLoyaltyPoints DESC
LIMIT 5;

-- Shipping Cost Analysis - Highest Shipping Cost
SELECT MAX(ShippingCost) AS MaxShippingCost FROM interview.assessment_dataset01;

-- Cities with the Fastest Delivery
SELECT City, AVG(DeliveryTimeDays) AS AvgDeliveryTime
FROM interview.assessment_dataset01
GROUP BY City
ORDER BY AvgDeliveryTime ASC
LIMIT 50;
    
    

