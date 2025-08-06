-- Insert into Categories
INSERT INTO Categories (CategoryName) VALUES ('Fiction')
INSERT INTO Categories (CategoryName) VALUES ('Science')
INSERT INTO Categories (CategoryName) VALUES ('History')

-- Insert into Authors
INSERT INTO Authors (AuthorName) VALUES ('George Orwell');
INSERT INTO Authors (AuthorName) VALUES ('Isaac Newton');
INSERT INTO Authors (AuthorName) VALUES ('Yuval Noah Harari');


-- Insert into Books (some with full data, some with NULL)
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('1984', 1, 1);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('Principia Mathematica', 2, 2);
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('Sapiens', 3, 3);

-- Insert with NULL Author (allowed)
INSERT INTO Books (Title, AuthorID, CategoryID) VALUES ('Anonymous Book', NULL, 1);

-- Insert into Members
INSERT INTO Members (MemberName, JoinDate) VALUES ('Aarti Singh', '2025-08-01');
INSERT INTO Members (MemberName, JoinDate) VALUES ('Ravi Sharma', '2025-08-02');

-- Insert with NULL name (allowed)
INSERT INTO Members (MemberName, JoinDate) VALUES (NULL, '2025-08-03');

-- Insert into Loans
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate)
VALUES (1, 1, '2025-08-01', '2025-08-10');
INSERT INTO Loans (BookID, MemberID, LoanDate, ReturnDate)
VALUES (2, 2, '2025-08-02', NULL); -- Not returned yet

-- Update a specific member name
UPDATE Members 
SET MemberName = 'Aarti Chauhan'
WHERE MemberID = 1;

-- Update all books with NULL author to a specific author (e.g., AuthorID 1)
UPDATE Books
SET AuthorID = 1
WHERE AuthorID IS NULL;

-- Update return date for books not yet returned
UPDATE Loans
SET ReturnDate = '2025-08-15'
WHERE ReturnDate IS NULL;

-- Delete a loan record
DELETE FROM Loans 
WHERE LoanID = 2;

-- Delete books in the 'History' category (CategoryID 3)
DELETE FROM Books
WHERE CategoryID = 3;

-- Delete members who haven't provided names
DELETE FROM Members 
WHERE MemberName IS NULL;
