Create Table Customers (
  Customer_id INT PRIMARY KEY,
  Customer_name VARCHAR(100),
  Gender VARCHAR(10),
  City VARCHAR(50),
  State VARCHAR(50),
  Signup_date DATE);
  
  
  
  
Create Table Categories (
    Category_id INT PRIMARY KEY,
    Category_Name VARCHAR(50));
    
    
    
Create Table Products(
  Product_id INT PRIMARY KEY,
  Product_name VARCHAR(100),
  Category_id INT,
  Price Decimal (10,2),
  FOREIGN KEY(Category_id)
  REFERENCES Categories(Category_id));
  
  
  
  
Create Table Orders (
  Order_id INT PRIMARY KEY,
  Customer_id INT,
  Order_date DATE,
  FOREIGN KEY (Customer_id)
  REFERENCES Customers(Customer_id));
  
  
  
Create Table Order_Items(
  Order_item_id INT PRIMARY KEY,
  Order_id INT,
  Product_id INT,
  Quantity INT,
  FOREIGN KEY (Product_id)
  REFERENCES Products(Product_id),
  FOREIGN KEY (Order_id)
  REFERENCES Orders(Order_id));
  
  
  
  
Create Table Payments(
  Payment_id INT PRIMARY KEY,
  Order_id INT,
  Payment_method VARCHAR(50),
  Payment_status VARCHAR(30),
  FOREIGN KEY (Order_id)
  REFERENCES Orders(Order_id));