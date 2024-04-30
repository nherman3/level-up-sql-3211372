-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM CUSTOMERS WHERE LastName = 'Hundey';
-- CID==70

INSERT INTO ORDERS (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00');
-- OID==1001

SELECT * FROM Dishes 
WHERE Name = 'Tropical Blue Smoothie' 
   OR Name = 'House Salad' 
   OR Name = 'Mini Cheeseburgers';
-- DID==4,7,20

INSERT INTO OrdersDishes (OrderID,DishID)
VALUES  (1001,4),
        (1001,7),
        (1001,20);

SELECT SUM(D.Price)
FROM Dishes D JOIN OrdersDishes OD ON D.DishID=OD.DishID
WHERE OrderID=1001;