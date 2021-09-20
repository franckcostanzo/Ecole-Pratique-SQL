use commerce;

SELECT commerce.customers.customerName As CustomerName, 
commerce.customers.Address As Adress, 
commerce.customers.City As City, 
commerce.customers.PostalCode As PostalCode, 
commerce.customers.Country As Country,
commerce.orders.OrderDate As Date
FROM commerce.customers inner join commerce.orders
ON commerce.customers.CustomerID = commerce.orders.CustomerID
WHERE commerce.orders.OrderDate >= '1997-01-01'
ORDER BY commerce.customers.Country DESC;

SELECT commerce.products.ProductName As ProductName,
commerce.suppliers.SupplierName AS SupplierName
FROM commerce.products inner join commerce.suppliers
on commerce.products.SupplierID = commerce.suppliers.SupplierID
WHERE commerce.products.Price < 10 AND commerce.suppliers.SupplierName = 'Specialty Biscuits, Ltd.';

SELECT commerce.products.ProductID As ProductID,
commerce.products.ProductName As ProductName,
commerce.orderdetails.Quantity As QuantityOrdered,
commerce.orders.OrderID AS OrderID
FROM commerce.products inner join commerce.orderdetails
on commerce.products.ProductID = commerce.orderdetails.ProductID
inner join commerce.orders
on commerce.orders.OrderID = commerce.orderdetails.OrderID
WHERE commerce.products.ProductID LIKE '%60'
ORDER BY commerce.orderdetails.Quantity DESC;