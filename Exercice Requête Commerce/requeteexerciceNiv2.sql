use commerce;

SELECT commerce.products.ProductName AS ProductName,
commerce.products.Price As ProductPrice
FROM commerce.products 
WHERE commerce.products.CategoryID = 2
ORDER BY ProductPrice ASC;

SELECT ProductName, Unit, Price 
FROM commerce.products 
WHERE unit LIKE '%pkgs%';

SELECT ProductName, CategoryId, Unit, Price 
FROM commerce.products 
WHERE price BETWEEN 40 AND 80 ORDER BY Price;

SELECT EmployeeID, LastName, FirstName 
FROM commerce.employees 
WHERE notes LIKE '%French%';

SELECT ROUND(AVG(Price), 2) As AverageProductPrice
FROM commerce.products;