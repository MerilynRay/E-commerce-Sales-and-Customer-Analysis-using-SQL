CTE ( Common Table Expression ) 

With Revenue As(
     Select p.Product_name,Sum(Quantity*Price)as Revenue from Products p inner join Order_Items oi on p.Product_id=oi.Product_id group by p.Product_name)
     select * from Revenue where Revenue > 5000;

Rank Customers by spending 

Select c.Customer_name,sum(Price*Quantity)as "Total Spent",
       Rank() over(Order by sum(p.Price*oi.Quantity)DESC) as " Customer Rank"
from Customers c inner join Orders o on c.Customer_id=o.Customer_id
inner join Order_Items oi on o.Order_id=oi.Order_id
inner join Products p on oi.Product_id=p.Product_id
Group by c.Customer_name;

Over() 

Select Product_name,Price,Avg(Price)Over()as "Average Price" from Products;

To find the most expensive product in each category & rank it accordingly : 

Select Product_name,
        Category_id,
        Price,
        Rank() Over(
          Partition by Category_id
          Order by Price DESC) as " Category Rank"
 from Products; 

