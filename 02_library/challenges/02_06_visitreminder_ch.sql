-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT * FROM Loans JOIN Patrons ON Loans.PatronID=Patrons.PatronID
GROUP BY Loans.PatronID
ORDER BY Count()
LIMIT 5