
-- Insert into Authors table
INSERT INTO Authors (Name, Country)
VALUES ('J.K. Rowling', 'UK'),
       ('George R.R. Martin', 'USA'),
       ('Haruki Murakami', NULL); -- Country is NULL

-- Insert into Books
INSERT INTO Books (Title, Genre, AuthorID, PublishedYear)
VALUES ('Harry Potter', 'Fantasy', 1, 1997),
       ('Game of Thrones', 'Fantasy', 2, 1996),
       ('Kafka on the Shore', 'Fiction', 3, NULL); -- Missing year

-- Insert into Members
INSERT INTO Members (Name, Email, JoinDate)
VALUES ('Alice', 'alice@example.com', '2023-01-15'),
       ('Bob', NULL, '2023-02-10'), -- Email is NULL
       ('Charlie', 'charlie@example.com', DEFAULT); -- Default JoinDate

-- Insert into Borrowing
INSERT INTO Borrowing (MemberID, BookID, BorrowDate, ReturnDate)
VALUES (1, 1, '2023-07-01', '2023-07-10'),
       (2, 2, '2023-07-03', NULL); -- Book not yet returned

-- Update NULL Country for Murakami
UPDATE Authors
SET Country = 'Japan'
WHERE Name = 'Haruki Murakami';

-- Update Borrow record with return date
UPDATE Borrowing
SET ReturnDate = '2023-07-12'
WHERE MemberID = 2 AND BookID = 2;

-- Delete a member by ID
DELETE FROM Members
WHERE MemberID = 3;

-- Delete all borrowings where ReturnDate IS NULL
DELETE FROM Borrowing
WHERE ReturnDate IS NULL;
