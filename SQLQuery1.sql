--Retrieve all customers whose contact name contains the substring "Maria"
SELECT * FROM CUSTOMERS
WHERE CONTACTNAME LIKE '%MARIA%'
--Retrieve all employees who are in the 'Sales' or 'Marketing' departments

--Retrieve all orders with a Freight charge between $50 and $200
SELECT * FROM ORDERS
WHERE FREIGHT BETWEEN 50 AND 200
--Retrieve all employees who were hired between January 1, 1992, and December 31, 1995
SELECT * FROM EMPLOYEES 
WHERE HIREDATE BETWEEN '1992-1-1' AND '1995-12-31'
--Retrieve all customers located in 'Berlin' who have postal codes starting with '1'
SELECT * FROM CUSTOMERS
WHERE CITY = 'BERLIN' AND POSTALCODE LIKE '1%'
--Retrieve all employees who are either in the 'Sales Representative' position or have been hired after January 1, 1995
SELECT * FROM EMPLOYEES 
WHERE TITLE = 'SALES REPRESENTATIVE' OR HIREDATE > '1995.1.1'
--Retrieve all products that have a UnitPrice between $20 and $50 and a UnitsInStock greater than 100
SELECT * FROM PRODUCTS 
WHERE UNITPRICE BETWEEN 20 AND 50 AND UNITSINSTOCK > 100
--Retrieve all suppliers who are either located in 'Tokyo' or whose company name starts with 'Exotic'
SELECT * FROM SUPPLIERS
WHERE CITY = 'TOKYO' OR COMPANYNAME LIKE 'EXOTIC%'
--Retrieve the top 10 customers who are either from 'London' or 'Paris' and order them by CompanyName in ascending order
SELECT TOP 10 * FROM CUSTOMERS 
WHERE CITY IN('LONDON','PARIS')
ORDER BY COMPANYNAME
--Retrieve 30% of orders placed in the year 1996
SELECT TOP 30 PERCENT * FROM ORDERS
WHERE YEAR(ORDERDATE) = 1996
--Retrieve all products with NULL values in the ReorderLevel column
SELECT * FROM PRODUCTS 
WHERE REORDERLEVEL = 0
--Retrieve all products with non-NULL values in the UnitsInStock column
SELECT * FROM PRODUCTS
WHERE UNITSINSTOCK != 0
--Retrieve all products whose names start with 'C'
SELECT * FROM PRODUCTS 
WHERE PRODUCTNAME LIKE 'C%'
--Retrieve all orders placed between '1996-01-01' and '1996-03-31' that were shipped after '1996-04-15'
SELECT * FROM ORDERS
WHERE ORDERDATE BETWEEN '1996-01-01' AND '1996-03-31' AND SHIPPEDDATE > '1996-04-15'