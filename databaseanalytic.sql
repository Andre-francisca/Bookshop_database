create database `Bookstore`;

USE `Bookstore`;

create table `Book` (
	Book_ID INT auto_increment primary Key,
    Book_Name VARCHAR (50),
    Publicher VARCHAR (50),
    ISBN VARCHAR (50),
    Edition VARCHAR (100) ,
    Number_Of_Pages INT ,
    Sales INT ,
    City VARCHAR (100),
    Price Decimal (10,2)
);

Insert into Book values
(1,'debbi b','flad','lopes','28 th may', 45, 40,'New city',95),
(2,'debo','andre','santos','5 th may', 65, 98,'california',55),
(4,'Shazam','ravi','gabi','18 th may', 75, 12,'los angeles',15);

-- getting the most expensive book -- 
SELECT Book_Name, Price FROM book where Price = (SELECT MAX(Price)  FROM book);
 
-- getting most popular books in each city --  
Select Book_Name, Sales, City From book where Sales =(Select Max(Sales) From book);
 
Select Book_Name, Sales from book where Sales = (Select Max(Sales) From book );

Select Book_Name, Sales from book where Sales = (Select Min(Sales) from book ); 