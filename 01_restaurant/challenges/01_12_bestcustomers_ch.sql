-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Orders.CustomerID ID, COUNT() NoOrders, FirstName, LastName, Email
FROM Orders JOIN Customers 
  ON Orders.CustomerID = Customers.CustomerID
GROUP BY ID
ORDER BY NoOrders DESC
LIMIT 5