INSERT INTO Categories (Category_id, Category_Name) VALUES
(1,'Electronics'),
(2,'Fashion'),
(3,'Home & Kitchen'),
(4,'Books'),
(5,'Sports & Fitness'),
(6,'Beauty & Personal Care'),
(7,'Toys & Games'),
(8,'Groceries'),
(9,'Office Supplies'),
(10,'Health Care');
    
    
 
INSERT INTO Customers
(Customer_id, Customer_name, Gender, City, State, Signup_date)
VALUES
(1,'Aarav Sharma','Male','Mumbai','Maharashtra','2025-01-10'),
(2,'Priya Nair','Female','Bengaluru','Karnataka','2025-01-12'),
(3,'Rahul Verma','Male','Delhi','Delhi','2025-01-15'),
(4,'Sneha Patil','Female','Pune','Maharashtra','2025-01-20'),
(5,'Aditya Singh','Male','Lucknow','Uttar Pradesh','2025-02-02'),
(6,'Neha Gupta','Female','Jaipur','Rajasthan','2025-02-05'),
(7,'Vikram Rao','Male','Hyderabad','Telangana','2025-02-10'),
(8,'Ananya Das','Female','Kolkata','West Bengal','2025-02-15'),
(9,'Karan Mehta','Male','Ahmedabad','Gujarat','2025-02-20'),
(10,'Pooja Joshi','Female','Chandigarh','Punjab','2025-02-25');
  
  
  
 INSERT INTO Products
(Product_id, Product_name, Category_id, Price)
VALUES
(101,'iPhone 15',1,79999),
(102,'Samsung Galaxy S24',1,74999),
(103,'Dell Inspiron Laptop',1,65999),
(104,'Boat Headphones',1,2499),
(105,'Sony Smart TV',1,54999),
(106,'Smart Watch',1,6999),
(107,'Men''s Denim Jacket',2,2499),
(108,'Women''s Kurti',2,1499),
(109,'Running Shoes',2,3499),
(110,'Leather Wallet',2,999),
(111,'Office Chair',3,5999),
(112,'Dining Table',3,18999),
(113,'Mixer Grinder',3,3499),
(114,'Cookware Set',3,2999),
(115,'Vacuum Cleaner',3,7999),
(116,'Atomic Habits',4,599),
(117,'The Psychology of Money',4,499),
(118,'Harry Potter Collection',4,2499),
(119,'Yoga Mat',5,899),
(120,'Cricket Bat',5,2199),
(121,'Dumbbell Set',5,3999),
(122,'Protein Powder',5,2799),
(123,'Face Wash',6,399),
(124,'Perfume',6,1499),
(125,'Lipstick',6,799),
(126,'LEGO Building Set',7,3499),
(127,'Remote Control Car',7,2299),
(128,'Barbie Doll',7,1999),
(129,'Basmati Rice 5kg',8,799),
(130,'Olive Oil 1L',8,699);


INSERT INTO Orders (Order_id, Customer_id, Order_date) VALUES
(1001,1,'2025-03-01'),
(1002,2,'2025-03-02'),
(1003,3,'2025-03-03'),
(1004,4,'2025-03-04'),
(1005,5,'2025-03-05'),
(1006,6,'2025-03-06'),
(1007,7,'2025-03-07'),
(1008,8,'2025-03-08'),
(1009,9,'2025-03-09'),
(1010,10,'2025-03-10'),
(1011,2,'2025-03-11'),
(1012,5,'2025-03-12'),
(1013,1,'2025-03-13'),
(1014,8,'2025-03-14'),
(1015,3,'2025-03-15'),
(1016,6,'2025-03-16'),
(1017,9,'2025-03-17'),
(1018,4,'2025-03-18'),
(1019,10,'2025-03-19'),
(1020,7,'2025-03-20');



INSERT INTO Order_Items (Order_item_id, Order_id, Product_id, Quantity) VALUES
(1,1001,101,1),
(2,1001,104,2),
(3,1002,108,2),
(4,1002,110,1),
(5,1003,116,1),
(6,1004,111,1),
(7,1004,113,1),
(8,1005,119,2),
(9,1005,120,1),
(10,1006,123,3),
(11,1007,105,1),
(12,1008,117,2),
(13,1009,102,1),
(14,1009,104,1),
(15,1010,126,1),
(16,1011,129,2),
(17,1012,106,1),
(18,1013,103,1),
(19,1013,104,2),
(20,1014,118,1),
(21,1015,121,1),
(22,1016,124,2),
(23,1017,130,3),
(24,1018,109,2),
(25,1019,115,1),
(26,1020,127,1),
(27,1011,107,1),
(28,1012,111,1),
(29,1014,129,2),
(30,1015,122,1),
(31,1016,125,2),
(32,1017,116,1),
(33,1018,108,1),
(34,1019,104,2),
(35,1020,130,1);



INSERT INTO Payments (Payment_id, Order_id, Payment_method, Payment_status) VALUES
(1,1001,'UPI','Completed'),
(2,1002,'Credit Card','Completed'),
(3,1003,'Debit Card','Completed'),
(4,1004,'UPI','Completed'),
(5,1005,'Net Banking','Completed'),
(6,1006,'Cash on Delivery','Completed'),
(7,1007,'Credit Card','Completed'),
(8,1008,'UPI','Completed'),
(9,1009,'Debit Card','Completed'),
(10,1010,'UPI','Completed'),
(11,1011,'Credit Card','Completed'),
(12,1012,'UPI','Completed'),
(13,1013,'Net Banking','Completed'),
(14,1014,'Cash on Delivery','Completed'),
(15,1015,'UPI','Completed'),
(16,1016,'Debit Card','Completed'),
(17,1017,'Credit Card','Completed'),
(18,1018,'UPI','Completed'),
(19,1019,'Cash on Delivery','Completed'),
(20,1020,'UPI','Completed');