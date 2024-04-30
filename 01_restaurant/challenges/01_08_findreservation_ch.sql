-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM CUSTOMERS C JOIN Reservations R ON C.CustomerID = R.CustomerID
WHERE LastName IN  ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
      AND PartySize = 4 
      AND Date LIKE ('%06-14%')