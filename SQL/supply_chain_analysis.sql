-- Total Orders

SELECT 
COUNT(Order_ID) AS Total_Orders
FROM supply_chain;



-- Total Quantity Ordered

SELECT
SUM(Quantity) AS Total_Quantity
FROM supply_chain;



-- Order Status Analysis

SELECT
Order_Status,
COUNT(*) AS Orders
FROM supply_chain
GROUP BY Order_Status;



-- Supplier Performance

SELECT
Supplier,
AVG(Lead_Time) AS Average_Lead_Time
FROM supply_chain
GROUP BY Supplier
ORDER BY Average_Lead_Time;



-- Region Wise Performance

SELECT
Region,
SUM(Quantity) AS Total_Quantity,
SUM(Shipping_Cost) AS Total_Shipping_Cost
FROM supply_chain
GROUP BY Region;



-- Product Category Analysis

SELECT
Product_Category,
SUM(Quantity) AS Total_Sales
FROM supply_chain
GROUP BY Product_Category;



-- Delayed Orders

SELECT *
FROM supply_chain
WHERE Order_Status='Delayed';



-- Inventory Analysis

SELECT
Product_Name,
Inventory_Level
FROM supply_chain
ORDER BY Inventory_Level ASC;
