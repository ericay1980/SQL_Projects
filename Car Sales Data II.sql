CREATE DATABASE IF NOT EXISTS Car_ds;
CREATE TABLE Car_ds.Car
	(Sales_ID Int, First_Name varchar(100),
	City varchar(100),
    Commission_Rate INT);
    
   
  
INSERT INTO Car_ds.Car(Sales_ID , First_Name, City,Commission_Rate) 
VALUES (1002, 'William','London', 12),
(1003, 'Oliver', 'Barcelona', 15),
(1004, 'James', 'London', 11),
(1008, 'John', 'London', 0),
(1009, 'Charles', 'Florida', Null),
(1009, 'Charles', 'Florida', Null),
(1004, 'James', 'London', 11),
 (1004, 'James', 'London', 11),
(1003, 'Oliver', 'Barcelona', 15),
(1003, 'Oliver', 'Barcelona', 15),
(1003, 'Oliver', 'Barcelona', 15),
(1001, 'Liam', 'San_Jose', 13),
(1001, 'Liam', 'San_Jose', 13),
(1009, 'Charles', 'Florida', null),
(1008, 'John', 'London', 0),
(1008, 'John', 'London', 0),
(1008, 'John', 'London', 0)
;

/*Extract details of the salespersons in London*/
Select 
	Sales_ID, 
	First_Name, 
	City, 
	Commission_Rate
FROM 
	car_ds.car 
where 
	city IN ('London');
Select *from car_ds.car where city='London'
;

/*Extract the details of the salespersons who have the commission rate of 0*/
Select 
	Sales_ID, 
	First_Name, 
	City, 
	Commission_Rate
FROM 
	car_ds.car 
where 
	Commission_Rate=0
    ;
    
/*Extract the details of the salespersons who have a commission rate below the average in London*/

   select avg(Commission_Rate)
	From car_ds.Car;
    
    Select * from car_ds.Car where Commission_Rate < 9.3571
    ;
    
    Select * from car_ds.car where Commission_Rate < 9.53571 and 'London'
    ;
    
    /*Extract the details of all sales persons in Florida, Barcelona, and San Jose*/
    
    Select * from car_ds.car 
    where city in ('Florida', 'Barcelona','San Jose');
