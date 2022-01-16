/*2.A)*/
SELECT Count(ShipperID) FROM [Orders]
where ShipperID=1

/*2.B)*/

SELECT EmployeeID, MAX (EmployeeIDcount)
FROM (SELECT EmployeeID, count(EmployeeID) EmployeeIDcount
FROM Orders
GROUP BY EmployeeID);

SELECT LastName FROM [Employees]
where EmployeeID=4

/*2.C)*/

SELECT * FROM [Customers]
where country='Germany'

SELECT OrderID, CustomerID, count(OrderID) FROM [Orders]
where CustomerID IN (1, 6, 17, 25, 39, 44, 52, 56, 63, 79, 86) 
GROUP BY OrderID

SELECT ProductID, MAX (COUNTPRODUCT)
FROM (SELECT ProductID, count(ProductID) COUNTPRODUCT
FROM OrderDetails
Where OrderID IN (10267, 10273, 10277, 10279, 10284, 10285, 10286, 10301, 10312, 10313, 10323, 10325, 10337, 10342, 10343, 10345, 10348, 10356, 10361, 10363, 10391, 10396, 10407, 10418, 10428)
GROUP BY ProductID;

SELECT ProductName, ProductID FROM [Products]
where ProductID=31