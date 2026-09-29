
-- database - sql question
select * from Customers
select * from orders
select * from Product

--identify pair of customers who live in the same country
 select x.CustomerName from Customers x join Customers y on x.Country=y.Country	 and x.CustomerID <> y.CustomerID and x.CustomerID>y.CustomerID

-- find the customer who has spent the most on their orders
select CustomerName, sum(price)	[amont spent]	, DENSE_RANK() OVER(ORDER BY SUM(price) desc) [DR]
from Customers c inner join Orders o on c.CustomerID=o.CustomerID inner join Products p on o.ProductID	= p.ProductID
group by CustomerName

-- Find customer who have ordered more than one type of products
select CustomerName,count(ProductID) from Customer c join orders o on c.CustomerID = o.CustomerID
group by CustomerName
having count(productID)>1

-- List all products and their corresponding orders ,using RIGHT JOIN, including products that never been ordered.
select OrderID,p.ProductID,ProductName from Orders o right join Product p on p.ProductID=o.ProductID

-- Retrieve all orderd placed by customers from the usa
select* from Customers c inner join orders o on c.CustomerID = o.CustomerID	where Country in ('usa')

-- find the name of the customers who have ordered a product placed above $500.
select distinct CustomerName from Customers c join Orders o on c.CustomerID = o.CustomerID inner join Product p on p.ProductID = o.ProductID where price>	500

-- find customers who have ordered the same product more than once
select distinct m.customername from
(select CustomerName, ProductID,count(orderID) [count] from Customers c inner join Orders o on c.CustomerID = o.CustomerID
group by CustomerName, ProductID
having count(orderID)>1) m














