# Shopify-Technical-Challenge
Data analysis and SQL code

1.A) If the sum of order amount is taken and divided by the number of orders, we can see that the AOV is equal to 3145 so there wasn’t an issue with the calculation. However, if we take a look at the data, there are some outliers present. One example of this is purchases of 2000 items with a value of 704000, all being purchased by the same individual at the same store. I believe a better way to analyze the data would be to split the data into 2 AOV’s, with one AOV representing orders under $2000 and the other representing orders above $2000. I would do this as over 98% of orders are under $2000, so I believe they provide a better representation of the general population of orders.

B) Another metric I would include in this data set is standard deviation of the order cost. This would give more insight as to weather the data needs further investigation in order to find answers to discrepancies such as a high AOV.

C) The standard deviation of orders under $2000 is only $161, compared to the $41283 standard deviation that includes all values. This large difference should raise some concern before advancing with data analysis.

2.A)

CODE
SELECT Count(ShipperID) FROM [Orders]                                                                                                    
where ShipperID=1

EXPLANTION
Knowing that the shipper ID of Speedy Express was 1, the count function was used to keep track of "1" occurences in order to figure out how many products were sent out by that company  

2.B)
CODE

SELECT EmployeeID, MAX (EmployeeIDcount)
FROM (SELECT EmployeeID, count(EmployeeID) EmployeeIDcount
FROM Orders
GROUP BY EmployeeID); 

SELECT LastName FROM [Employees] 
Where EmployeeID=4

EXPLANATION
The first block of code counted the occurances of each employee ID and outputted the Employee ID with the highest occurance, this was used to find the employee with the highest number of orders
The second block of code used the answer obtained from the previous code to find the last name of such employee
