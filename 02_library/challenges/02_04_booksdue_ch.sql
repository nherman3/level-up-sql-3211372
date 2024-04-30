-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT DueDate, Title, FirstName, Email, ReturnedDate
FROM Loans L Join Patrons P ON L.PatronID = P.PatronID
JOIN Books B on B.BookID = L.BookID
WHERE DueDate = '2022-07-13'