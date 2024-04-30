-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM CUSTOMERS
WHERE FirstName = 'Cleo';

SELECT DishID FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes
                    WHERE Name = 'Quinoa Salmon Salad')
WHERE FirstName = 'Cleo'