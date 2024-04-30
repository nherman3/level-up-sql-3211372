-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Title, COUNT(), Published FROM Books
GROUP BY Published
ORDER BY COUNT() DESC;

SELECT Title, COUNT() FROM Loans JOIN Books on Loans.BookID = Books.BookID
GROUP BY Title
ORDER BY COUNT() DESC
LIMIT 5;