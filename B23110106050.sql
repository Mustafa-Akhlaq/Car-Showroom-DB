CREATE TABLE Customers(
CustomerID SERIAL PRIMARY KEY,
Customer_Name VARCHAR(100),
City VARCHAR(100),
State VARCHAR(100),
Join_Date Date
);

CREATE TABLE Cars(
Car_ID SERIAL PRIMARY KEY,
Model Varchar(100),
Brand VarChar(100),
Year INT,
Price NUMERIC(10, 2),
Color VarChar(100),
InventoryCount INT
)  
CREATE TABLE Salespersons (
SalespersonID SERIAL PRIMARY KEY,
Name VARCHAR(100),
Department VARCHAR(100),
HireDate DATE
);
CREATE TABLE Sales(
Sale_Id SERIAL PRIMARY KEY,
CustomerID INT REFERENCES Customers(CustomerID),
Car_ID INT REFERENCES Cars(Car_ID),
Sale_Date DATE,
Sale_Price Numeric(10,2),
SalesPersonID INT REFERENCES Salespersons(SalespersonID)

);
CREATE TABLE ServiceRecords(
RecordID SERIAL PRIMARY KEY,
Car_ID Int REFERENCES Cars(Car_ID),
ServiceDate Date,
ServiceType VarChar(100), 
Cost Numeric(10,2),
TechnicianID int

);



INSERT INTO Customers (Customer_Name, City, State, Join_Date) VALUES
('Ali Khan', 'Lahore', 'Punjab', '2023-01-15'),
('Sara Ahmed', 'Karachi', 'Sindh', '2023-02-20'),
('John Smith', 'Islamabad', 'Capital', '2023-03-12'),
('Maryam Bibi', 'Lahore', 'Punjab', '2023-04-01'),
('Ahmed Raza', 'Faisalabad', 'Punjab', '2023-05-18'),
('Fatima Noor', 'Multan', 'Punjab', '2023-06-25'),
('Bilal Hussain', 'Peshawar', 'KP', '2023-07-10'),
('David Lee', 'Quetta', 'Balochistan', '2023-08-05'),
('Usman Ali', 'Lahore', 'Punjab', '2023-09-14'),
('Ayesha Khan', 'Karachi', 'Sindh', '2023-10-02'),
('Shahzad Ali', 'Quetta', 'Balochistan', '2024-06-12'),
('Michael Brown', 'Karachi', 'Sindh', '2024-07-18'),
('Yasir Jamal', 'Faisalabad', 'Punjab', '2024-08-01');

INSERT INTO Cars (Model, Brand, Year, Price, Color, InventoryCount) VALUES
('Corolla', 'Toyota', 2022, 30000, 'White', 10),
('Camry', 'Toyota', 2023, 35000, 'Black', 8),
('Yaris', 'Toyota', 2021, 20000, 'Blue', 12),
('Hilux', 'Toyota', 2023, 40000, 'Red', 5),
('Fortuner', 'Toyota', 2022, 45000, 'Grey', 7),
('Prius', 'Toyota', 2023, 38000, 'Silver', 6),
('Land Cruiser', 'Toyota', 2024, 80000, 'White', 3),
('Mustang', 'Ford', 2023, 55000, 'Yellow', 3),
('F-150', 'Ford', 2022, 60000, 'Blue', 4);


INSERT INTO Salespersons (Name, Department, HireDate) VALUES
('Ali Haider', 'Sales', '2022-01-10'),
('Maria Iqbal', 'Sales', '2022-03-15'),
('Usman Tariq', 'Sales', '2023-02-20'),
('Sara Khan', 'Luxury Sales', '2023-05-01'),
('David Johnson', 'Corporate Sales', '2023-07-18');


INSERT INTO Sales (CustomerID, Car_ID, Sale_Date, Sale_Price, SalesPersonID) VALUES

(1, 1, '2024-01-05', 30000, 1),
(2, 1, '2024-01-06', 30000, 1),
(3, 1, '2024-01-07', 30000, 2),
(4, 1, '2024-01-08', 30000, 2),
(5, 1, '2024-01-09', 30000, 3),
(6, 1, '2024-01-10', 30000, 3),
(7, 1, '2024-01-11', 30000, 4),
(8, 1, '2024-01-12', 30000, 4),
(9, 1, '2024-01-13', 30000, 5),
(10, 1, '2024-01-14', 30000, 5),
(11, 1, '2024-01-15', 30000, 1),
(12, 1, '2024-01-16', 30000, 1),
(13, 2, '2024-01-17', 35000, 2),
(14, 3, '2024-01-18', 20000, 3),
(15, 4, '2024-01-19', 40000, 4),
(16, 5, '2024-01-20', 45000, 5),
(17, 6, '2024-01-21', 38000, 1),
(18, 7, '2024-01-22', 80000, 2),
(19, 8, '2024-01-23', 32000, 3),
(20, 9, '2024-01-24', 25000, 4),
(1, 10, '2024-01-25', 37000, 5),
(2, 11, '2024-01-26', 28000, 1),
(3, 12, '2024-01-27', 90000, 2),
(4, 13, '2024-01-28', 50000, 3),
(5, 14, '2024-01-29', 55000, 4),
(6, 15, '2024-02-01', 60000, 5),
(7, 2, '2024-02-02', 35000, 1),
(8, 3, '2024-02-03', 20000, 2),
(9, 4, '2024-02-04', 40000, 3),
(10, 5, '2024-02-05', 45000, 4),
(11, 6, '2024-02-06', 38000, 5),
(12, 7, '2024-02-07', 80000, 1),
(13, 8, '2024-02-08', 32000, 2),
(14, 9, '2024-02-09', 25000, 3),
(15, 10, '2024-02-10', 37000, 4),
(20, 15, '2024-02-15', 60000, 4);


INSERT INTO ServiceRecords (Car_ID, ServiceDate, ServiceType, Cost, TechnicianID) VALUES
(1, '2024-01-05', 'Oil Change', 150, 101),
(1, '2024-02-05', 'Brake Repair', 800, 102),
(2, '2024-02-10', 'Engine Overhaul', 2000, 103),
(3, '2024-02-15', 'Battery Replacement', 600, 104),
(4, '2024-03-01', 'Oil Change', 120, 101),
(5, '2024-03-05', 'Transmission Repair', 1800, 105),
(6, '2024-03-10', 'Brake Repair', 750, 102),
(7, '2024-03-15', 'Tire Replacement', 400, 106),
(8, '2024-04-01', 'Engine Overhaul', 2200, 103),
(9, '2024-04-05', 'Battery Replacement', 650, 104),
(10, '2024-04-10', 'Oil Change', 130, 101),
(11, '2024-04-15', 'Brake Repair', 900, 102),
(12, '2024-05-01', 'Transmission Repair', 1900, 105),
(13, '2024-05-05', 'Engine Overhaul', 2100, 103),
(14, '2024-05-10', 'Tire Replacement', 450, 106),
(15, '2024-05-15', 'Battery Replacement', 700, 104),
(4, '2024-06-15', 'Battery Replacement', 650, 104);

SELECT Count(*) AS TotalCustomers
FROM Customers; 
SELECT AVG (Sale_Price) As AverageSaleprice
FROM Sales;

SELECT MAX (Sale_Price) As MaximumSaleprice
FROM Sales;
SELECT SUM(InventoryCount) As TotalInventoryCount
FROM Cars;
SELECT MIN(Sale_Date) As EarliestSale,
MAX(Sale_Date) As RecentSale
From Sales;

SELECT 
    Brand, 
    COUNT(DISTINCT Model) AS TotalModels
FROM Cars
GROUP BY Brand;
SELECT Sum(Sale_Price) As Totalsales
From Sales
Group By SalesPersonID;
SELECT 
    c.Model,
    AVG(s.Sale_Price) AS AvgSalePrice
FROM Sales s
JOIN Cars c 
    ON s.Car_ID = c.Car_ID
GROUP BY c.Model;

SELECT 
    ServiceType,
    AVG(Cost) AS AvgServiceCost
FROM ServiceRecords
GROUP BY ServiceType;


SELECT Brand, Color,
Count(*) As Total
FROM Cars
GROUP BY Brand,Color;


SELECT Brand,
COUNT(DISTINCT Model) As TotalModels
From Cars
GROUP BY Brand
Having Count(DISTINCT Model)> 5;

SELECT 
c.Model,
Count(*) As SaleCount
From Sales s
Join Cars c
On c.Car_ID=s.Car_ID
Group By c.Model
Having Count(*)>10;
Select sp.Name,
AVG(s.Sale_Price) As AverageSaleprice
From Sales s
Join Salespersons sp
On s.SalesPersonID=sp.SalesPersonID
GROUP BY sp.Name
Having AVG(s.Sale_Price)>50000;

SELECT 
EXTRACT (MONTH FROM Sale_Date) As SaleMonth,
Count(*) AS TotalSales
FROM Sales
Group by SaleMonth
Having Count(*)>20;






SELECT ServiceType,
AVG(Cost) As AvgCost
From ServiceRecords
Group By ServiceType
Having AVG(Cost) >500;

