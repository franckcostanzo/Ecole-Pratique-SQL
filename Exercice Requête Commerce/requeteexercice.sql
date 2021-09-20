use commerce;

SELECT Country FROM commerce.customers WHERE Country = 'France';
SELECT LastName, FirstName, Birthdate, Photo, Notes FROM commerce.employees WHERE BirthDate >= '1960-01-01' ORDER BY BirthDate;
SELECT count(*) FROM commerce.orderdetails WHERE Quantity > 30;