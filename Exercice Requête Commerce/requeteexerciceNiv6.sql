use commerce;

SELECT commerce.customers.CustomerName AS CustomerName,
commerce.customers.Country AS CustomerCountry,
SUM(commerce.orderdetails.Quantity*commerce.products.Price) AS TotalPrice
FROM commerce.orders 
inner join commerce.customers USING (CustomerID)
inner join commerce.orderdetails USING (OrderID)
inner join commerce.products USING (ProductID)
WHERE commerce.customers.CustomerID IN (SELECT commerce.orders.CustomerID AS CustomerID
FROM commerce.orders
GROUP BY commerce.orders.CustomerID
having count(OrderID) > 1)
Group by commerce.customers.CustomerID;