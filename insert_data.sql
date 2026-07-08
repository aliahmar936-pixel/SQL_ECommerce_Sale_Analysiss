/*==============================================================
SECTION 3: DATA POPULATION
==============================================================*/

USE ecommerce_sales;

-- Insert Customers

INSERT INTO customers VALUES
(1,'Ahmar Ali','Male','Rawalpindi',20),
(2,'Ali Khan','Male','Lahore',25),
(3,'Sara Ahmed','Female','Karachi',22),
(4,'Fatima Noor','Female','Islamabad',27),
(5,'Ahmed Raza','Male','Peshawar',30),
(6,'Ayesha Malik','Female','Lahore',24),
(7,'Bilal Hassan','Male','Faisalabad',29),
(8,'Zainab Ali','Female','Multan',21),
(9,'Usman Tariq','Male','Islamabad',32),
(10,'Hina Aslam','Female','Rawalpindi',26);

-- Insert Products

INSERT INTO products VALUES
(101,'Laptop','Electronics',1200.00),
(102,'Smartphone','Electronics',850.00),
(103,'Headphones','Electronics',150.00),
(104,'Office Chair','Furniture',220.00),
(105,'Study Table','Furniture',350.00),
(106,'Backpack','Accessories',70.00),
(107,'Keyboard','Electronics',90.00),
(108,'Mouse','Electronics',45.00),
(109,'Water Bottle','Accessories',25.00),
(110,'Notebook','Stationery',10.00);

-- Insert Orders

INSERT INTO orders VALUES
(1001,1,101,1,'2026-01-05'),
(1002,2,102,2,'2026-01-07'),
(1003,3,103,1,'2026-01-10'),
(1004,4,104,1,'2026-01-15'),
(1005,5,105,2,'2026-01-18'),
(1006,6,106,3,'2026-01-22'),
(1007,7,107,1,'2026-02-01'),
(1008,8,108,2,'2026-02-05'),
(1009,9,109,4,'2026-02-10'),
(1010,10,110,10,'2026-02-15'),
(1011,1,102,1,'2026-02-18'),
(1012,3,101,1,'2026-02-20'),
(1013,6,105,1,'2026-03-02'),
(1014,8,103,2,'2026-03-10'),
(1015,10,106,1,'2026-03-15');