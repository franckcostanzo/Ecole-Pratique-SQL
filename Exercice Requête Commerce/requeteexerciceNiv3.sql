use commerce;

SELECT commerce.customers.City, count(*) 
FROM commerce.customers 
WHERE City in ('Marseille', 'Paris', 'Lyon')
GROUP BY City;

SELECT commerce.categories.CategoryName AS CategoryName, commerce.products.ProductName AS ProductName
FROM commerce.categories inner join commerce.products 
ON commerce.products.CategoryID = commerce.categories.CategoryID
WHERE commerce.categories.CategoryName in ('Confections', 'Grains/Cereals')
ORDER BY commerce.categories.CategoryName, commerce.products.ProductName ;

SELECT commerce.customers.customerName As CustomerName, 
commerce.customers.Address As Adress, 
commerce.customers.City As City, 
commerce.customers.PostalCode As PostalCode, 
commerce.customers.Country As Country, 
commerce.shippers.ShipperName As ShipperName
FROM commerce.customers inner join commerce.orders ON commerce.orders.CustomerID = commerce.customers.CustomerID
inner join commerce.shippers ON commerce.shippers.ShipperID = commerce.orders.ShipperID
WHERE commerce.shippers.ShipperName LIKE '%United Package%'
GROUP BY CustomerName
ORDER BY commerce.customers.Country ASC;