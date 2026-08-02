Which customer placed which order?

Select o.Order_id,o.Order_date,c.Customer_name from Orders o INNER JOIN Customers c ON o.Customer_id=c.Customer_id;


Products with their Categories :

Select p.Product_name,c.Category_name,p.Price from Products p INNER JOIN Categories c on p.Category_id=c.Category_id;


Product Purchased in each Order : 

Select oi.Order_id,oi.Quantity,p.Product_name from Order_Items oi INNER JOIN Products p ON oi.Product_id=p.Product_id Order by oi.Order_id;

Revenue by Category :

Select cat.Category_Name,Sum(oi.Quantity*p.Price)AS Revenue from Categories cat INNER JOIN Products p on cat.Category_id=p.Category_id INNER JOIN Order_Items oi on p.Product_id=oi.Product_id Group by cat.Category_Name Order by Revenue DESC;

Number of orders placed by each customer:

Select c.Customer_name,Count(o.Order_id)as "Total Orders" from Customers c Inner Join Orders o on c.Customer_id=o.Customer_id Group by c.Customer_name Order by "Total Orders" DESC;


Customers who paid using UPI :

Select c.Customer_name, Pay.Payment_method from Customers c INNER JOIN Orders o on c.Customer_id=o.Customer_id INNER JOIN Payments Pay on o.Order_id=Pay.Order_id where Pay.Payment_method="UPI";


No of units sold by category :
Select cat.Category_Name,sum(oi.Quantity) as "Unit sold" from Categories cat Inner Join Products p on cat.Category_id=p.Category_id Inner Join Order_Items oi on p.Product_id=oi.Product_id group by cat.Category_Name Order by "Unit Sold" Desc;

Highest revenue generating category : 
SELECT
    cat.Category_Name,
    SUM(p.Price * oi.Quantity) AS Revenue
FROM Categories cat
INNER JOIN Products p
    ON cat.Category_id = p.Category_id
INNER JOIN Order_Items oi
    ON p.Product_id = oi.Product_id
GROUP BY cat.Category_Name
ORDER BY Revenue DESC
LIMIT 1;


Customers who placed more than one order: 

Select c.Customer_Name,Count(o.Order_id)as " Total orders" from Customers c Inner Join Orders o on c.Customer_id=o.Customer_id Group by c.Customer_Name Having Count(o.Order_id)>1;

Which products have never been sold?

Select p.Product_name,oi.Order_id,oi.Quantity from Products p Left join Order_Items oi on p.Product_id=oi.Product_id  where oi.Product_id is Null;

Monthly Revenue,

Select Month(Order_date) as "Month Number",MonthName(Order_date) as "Month Name", Sum( Quantity*Price) as "Revenue" from Orders o Inner Join Order_Items oi on o.Order_id=oi.Order_id Inner join Products p on oi.Product_id=p.Product_id group by Month(Order_date),MonthName(Order_date) Order by "Month Number";


Top 5 selling product :

Select p.Product_name,sum(oi.Quantity) as"Units Sold" from Products p Inner join Order_Items oi on p.Product_id=oi.Product_id group by p.Product_name order by sum(oi.Quantity) DESC limit 5;

Which products are priced above the average product price?

Select Product_name,Price from Products where price>(select avg(price) from Products)Order by Price Desc;

Most frequently used payment method : 

SELECT
    Payment_method,
    COUNT(Payment_id) AS Total_Transactions
FROM Payments
WHERE Payment_status = 'Completed'
GROUP BY Payment_method
ORDER BY Total_Transactions DESC;