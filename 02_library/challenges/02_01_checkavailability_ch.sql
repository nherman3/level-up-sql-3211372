-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT() FROM Books
WHERE Title = 'Dracula'

SELECT COUNT(Books.Title)
FROM Loans 
JOIN Books ON Loans.BookID = Books.BookID 
WHERE Books.Title = 'Dracula' 
  AND Loans.ReturnedDate IS NULL;