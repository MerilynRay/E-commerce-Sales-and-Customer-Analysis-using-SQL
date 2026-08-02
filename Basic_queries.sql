Find all female customers : 

Select*from Customers where Gender="Female";

Top 5 expensive product : 

Select* from Products Order By Price DESC Limit 5;

Average, highest & lowest price :

Select AVG(Price) AS Average_Price,
 Max(Price) AS Highest_Price,
 Min(Price) As Lowest_Price from Products;

Total number of customers:

SELECT COUNT(*) AS Total_Customers
FROM Customers;


Total number of Products:

Select Count(*) As"Total Products" from Products;


Unique Payment methods:

Select DISTINCT Payment_method from Payments;

In operator :

Select Customer_name from Customers where State IN ("Maharashtra","Andhra Pradesh","MadhyaPradesh");

Like operator : 

Select * from Customers where Customer_name Like "K%";