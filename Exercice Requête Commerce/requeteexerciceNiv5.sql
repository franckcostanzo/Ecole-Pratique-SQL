use commerce;

SELECT commerce.customers.CustomerName AS CustomerName, commerce.customers.Country AS CustomerCountry,
commerce.products.ProductName As ProductName, commerce.products.Price AS ProductPrice,
commerce.employees.FirstName As EmployeeName, commerce.employees.LastName As EmployeeLastName,
commerce.orders.OrderID As OrderID
FROM commerce.products inner join commerce.orderdetails on commerce.products.ProductID = commerce.orderdetails.ProductID
inner join commerce.orders on commerce.orderdetails.OrderID = commerce.orders.OrderID
inner join commerce.customers on commerce.orders.CustomerID = commerce.customers.CustomerID
inner join commerce.employees on commerce.orders.EmployeeID = commerce.employees.EmployeeID
WHERE commerce.customers.CustomerID = '63'
ORDER BY commerce.orders.OrderID ASC;

SELECT commerce.products.ProductName AS ProductName, commerce.products.Price AS ProductPrice,
commerce.customers.CustomerName As CustomerName, commerce.customers.Country AS CustomerCountry,
commerce.orderdetails.Quantity AS QuantityOrdered
FROM commerce.products inner join commerce.orderdetails on commerce.products.ProductID = commerce.orderdetails.ProductID
inner join commerce.orders on commerce.orderdetails.OrderID = commerce.orders.OrderID
inner join commerce.customers on commerce.orders.CustomerID = commerce.customers.CustomerID
WHERE commerce.products.ProductID = 28 AND commerce.orderdetails.Quantity BETWEEN 15 AND 30 
ORDER BY commerce.orderdetails.Quantity ASC;