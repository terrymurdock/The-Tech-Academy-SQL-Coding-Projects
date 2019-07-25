CREATE DATABASE db_library;

USE db_library;

CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY IDENTITY (100,1),
	BranchName varchar(50) NOT NULL,
	Address varchar(50) NOT NULL
);

CREATE TABLE PUBLISHER (
	PublisherName varchar(50) PRIMARY KEY NOT NULL,
	Address varchar(50) NOT NULL,
	Phone varchar(25) NOT NULL
);

CREATE TABLE BOOKS (
	BookID INT PRIMARY KEY IDENTITY (200,1),
	Title varchar(50) NOT NULL,
	PublisherName varchar(50) NOT NULL,
	CONSTRAINT fk_PublisherName FOREIGN KEY (PublisherName)
	REFERENCES PUBLISHER(PublisherName)
);

CREATE TABLE BOOK_COPIES (
	BookID INT NOT NULL,
	CONSTRAINT fk_BC_BookID FOREIGN KEY (BookID)
	REFERENCES BOOKS(BookID) ON DELETE CASCADE ON UPDATE CASCADE,
	BranchID INT NOT NULL,
	CONSTRAINT fk_BC_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH(BranchID) ON DELETE CASCADE ON UPDATE CASCADE,
	Number_Of_Copies INT NOT NULL
);

CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY IDENTITY (300,1),
	Name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Phone varchar(25) NOT NULL
);

CREATE TABLE BOOK_LOANS (
	BookID INT NOT NULL,
	CONSTRAINT fk_BL_BookID FOREIGN KEY (BookID)
	REFERENCES BOOKS(BookID) ON DELETE CASCADE ON UPDATE CASCADE,
	BranchID INT NOT NULL,
	CONSTRAINT fk_BL_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH(BranchID) ON DELETE CASCADE ON UPDATE CASCADE,
	CardNo INT NOT NULL,
	CONSTRAINT fk_CardNo FOREIGN KEY (CardNo)
	REFERENCES BORROWER(CardNo) ON DELETE CASCADE ON UPDATE CASCADE,
	DateOut DATE,
	DateDue DATE
);


CREATE TABLE BOOK_AUTHORS (
	BookID INT NOT NULL,
	CONSTRAINT fk_BA_BookID FOREIGN KEY (BookID)
	REFERENCES BOOKS(BookID),
	AuthorName varchar(50) NOT NULL
);

INSERT INTO LIBRARY_BRANCH
	(BranchName, Address)
	VALUES
	('Central', '123 Central Way'),
	('Downton', '234 Downtown Dr'),
	('MidTown', '345 MidTown Ave'),
	('Sharpstown', '456 Sharpstown St')
;

INSERT INTO PUBLISHER
	(PublisherName, Address, Phone)
	VALUES
	('BooksMania', '123 BooksMania Ave', '987-555-0000'),
	('Books-R-Us', '234 Books-R-Us Blvd', '876-555-0001'),
	('TheBookPeople', '345 TheBookPeople Dr', '765-555-0011'),
	('WeGotTheBooks', '456 WeGotTheBooks Way', '654-555-0111')
;

INSERT INTO BOOKS
	(Title, PublisherName)
	VALUES
	('The Shining', 'BooksMania'),
	('The Stand', 'BooksMania'),
	('Maurice', 'TheBookPeople'),
	('A Room With A View', 'TheBookPeople'),
	('The Firm', 'WeGotTheBooks'),
	('The Client', 'WeGotTheBooks'),
	('Holidays On Ice', 'Books-R-Us'),
	('Squirrel Seeks Chipmunk', 'Books-R-Us'),
	('Pride And Prejudice', 'TheBookPeople'),
	('Sense And Sensibility', 'TheBookPeople'),
	('Oliver Twist', 'TheBookPeople'),
	('David Copperfield', 'TheBookPeople'),
	('One For The Money', 'BooksMania'),
	('Two For The Dough', 'BooksMania'),
	('The Raven', 'WeGotTheBooks'),
	('The Pit And The Pendulum', 'WeGotTheBooks'),
	('Romeo And Juliet', 'WeGotTheBooks'),
	('MacBeth', 'WeGotTheBooks'),
	('Tyler Florence Fresh', 'Books-R-Us'),
	('Start Fresh', 'WeGotTheBooks'),
	('The Lost Tribe', 'Books-R-Us')
;

INSERT INTO BOOK_COPIES
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(200, 100, 4),
	(200, 101, 4),
	(200, 102, 4),
	(200, 103, 4),
	(201, 100, 4),
	(201, 101, 4),
	(201, 102, 4),
	(201, 103, 4),
	(202, 100, 4),
	(202, 101, 4),
	(202, 102, 4),
	(202, 103, 4),
	(203, 100, 4),
	(203, 101, 4),
	(203, 102, 4),
	(203, 103, 4),
	(204, 100, 4),
	(204, 101, 4),
	(204, 102, 4),
	(204, 103, 4),
	(205, 100, 4),
	(205, 101, 4),
	(205, 102, 4),
	(205, 103, 4),
	(206, 100, 4),
	(206, 101, 4),
	(206, 102, 4),
	(206, 103, 4),
	(207, 100, 4),
	(207, 101, 4),
	(207, 102, 4),
	(207, 103, 4),
	(208, 100, 4),
	(208, 101, 4),
	(208, 102, 4),
	(208, 103, 4),
	(209, 100, 4),
	(209, 101, 4),
	(209, 102, 4),
	(209, 103, 4),
	(210, 100, 4),
	(210, 101, 4),
	(210, 102, 4),
	(210, 103, 4),
	(211, 100, 4),
	(211, 101, 4),
	(211, 102, 4),
	(211, 103, 4),
	(212, 100, 4),
	(212, 101, 4),
	(212, 102, 4),
	(212, 103, 4),
	(213, 100, 4),
	(213, 101, 4),
	(213, 102, 4),
	(213, 103, 4),
	(214, 100, 4),
	(214, 101, 4),
	(214, 102, 4),
	(214, 103, 4),
	(215, 100, 4),
	(215, 101, 4),
	(215, 102, 4),
	(215, 103, 4),
	(216, 100, 4),
	(216, 101, 4),
	(216, 102, 4),
	(216, 103, 4),
	(217, 100, 4),
	(217, 101, 4),
	(217, 102, 4),
	(217, 103, 4),
	(218, 100, 4),
	(218, 101, 4),
	(218, 102, 4),
	(218, 103, 4),
	(219, 100, 4),
	(219, 101, 4),
	(219, 102, 4),
	(219, 103, 4),
	(220, 100, 4),
	(220, 101, 4),
	(220, 102, 4),
	(220, 103, 4)
;
	

INSERT INTO BORROWER
	(Name, Address, Phone)
	VALUES
	('Jimmie Murdock', '833 Evangeline Ave', '407-855-7319'),
	('Flora Murdock', '833 Evangeline Ave', '407-855-7319'),
	('Wayne Murdock', '123 Longwood Ln', '407-987-6543'),
	('Wanda Jackson', '234 Conway Rd', '407-876-5432'),
	('Lindy Farnam', '345 Lake Nona Ave', '321-987-9876'),
	('Robert Murdock', '456 Orlando Dr', '407-321-7654'),
	('Cindy Stephens', '838 Evangeline Ave', '407-855-5111'),
	('Carol Rodriguez', '839 Evangeline Ave', '407-851-2408'),
	('Terry Murdock', '833 Evangeline Ave', '407-855-7319')
;

INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(200, 100, 300, '07/01/2019', '07/15/2019'),
	(201, 100, 300, '07/01/2019', '07/15/2019'),
	(204, 100, 300, '07/01/2019', '07/15/2019'),
	(205, 100, 300, '07/01/2019', '07/15/2019'),
	(218, 100, 300, '07/01/2019', '07/15/2019'),
	(219, 100, 300, '07/01/2019', '07/15/2019'),
	(202, 100, 301, '07/01/2019', '07/15/2019'),
	(203, 100, 301, '07/01/2019', '07/15/2019'),
	(208, 100, 301, '07/01/2019', '07/15/2019'),
	(209, 100, 301, '07/01/2019', '07/15/2019'),
	(212, 100, 301, '07/01/2019', '07/15/2019'),
	(213, 100, 301, '07/01/2019', '07/15/2019'),
	(200, 103, 302, '07/05/2019', '07/19/2019'),
	(201, 103, 302, '07/05/2019', '07/19/2019'),
	(204, 103, 302, '07/05/2019', '07/19/2019'),
	(205, 103, 302, '07/05/2019', '07/19/2019'),
	(206, 103, 302, '07/05/2019', '07/19/2019'),
	(207, 103, 302, '07/05/2019', '07/19/2019'),
	(202, 102, 303, '07/11/2019', '07/25/2019'),
	(203, 102, 303, '07/11/2019', '07/25/2019'),
	(214, 102, 303, '07/11/2019', '07/25/2019'),
	(215, 102, 303, '07/11/2019', '07/25/2019'),
	(212, 102, 303, '07/11/2019', '07/25/2019'),
	(213, 102, 303, '07/11/2019', '07/25/2019'),
	(206, 102, 304, '07/15/2019', '07/29/2019'),
	(207, 102, 304, '07/15/2019', '07/29/2019'),
	(200, 102, 304, '07/15/2019', '07/29/2019'),
	(201, 102, 304, '07/15/2019', '07/29/2019'),
	(212, 102, 304, '07/15/2019', '07/29/2019'),
	(213, 102, 304, '07/15/2019', '07/29/2019'),
	(206, 101, 305, '07/03/2019', '07/18/2019'),
	(207, 101, 305, '07/03/2019', '07/18/2019'),
	(210, 101, 305, '07/03/2019', '07/18/2019'),
	(211, 101, 305, '07/03/2019', '07/18/2019'),
	(218, 101, 305, '07/03/2019', '07/18/2019'),
	(219, 101, 305, '07/03/2019', '07/18/2019'),
	(207, 103, 306, '07/14/2019', '07/28/2019'),
	(212, 103, 306, '07/14/2019', '07/28/2019'),
	(213, 103, 306, '07/14/2019', '07/28/2019'),
	(205, 103, 306, '07/14/2019', '07/28/2019'),
	(209, 103, 306, '07/14/2019', '07/28/2019'),
	(218, 103, 306, '07/14/2019', '07/28/2019'),
	(219, 103, 306, '07/14/2019', '07/28/2019'),
	(211, 100, 307, '07/10/2019', '07/24/2019'),
	(212, 100, 307, '07/10/2019', '07/24/2019'),
	(208, 100, 307, '07/10/2019', '07/24/2019'),
	(209, 100, 307, '07/10/2019', '07/24/2019'),
	(216, 100, 307, '07/10/2019', '07/24/2019'),
	(217, 100, 307, '07/10/2019', '07/24/2019'),
	(210, 100, 307, '07/10/2019', '07/24/2019')
;

INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	(200, 'Stephen King'),
	(201, 'Stephen King'),
	(202, 'E. M. Forrester'),
	(203, 'E. M. Forrester'),
	(204, 'John Grisham'),
	(205, 'John Grisham'),
	(206, 'David Sedaris'),
	(207, 'David Sedaris'),
	(208, 'Jane Austen'),
	(209, 'Jane Austen'),
	(210, 'Charles Dickens'),
	(211, 'Charles Dickens'),
	(212, 'Janet Evanovich'),
	(213, 'Janet Evanovich'),
	(214, 'Edgar Allen Poe'),
	(215, 'Edgar Allen Poe'),
	(216, 'William Shakespeare'),
	(217, 'William Shakespeare'),
	(218, 'Tyler Florence'),
	(219, 'Tyler Florence'),
	(220, 'Mark Lee')
;

/************************************************************
 STORED PROCEDURES THAT WILL QUERY THE TABLES IN THE DATABASE
************************************************************/

/* 1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

USE db_library
GO
CREATE PROCEDURE dbo.copiesSharpstown @Title varchar(50) = NULL, @BranchName varchar(50) = 'Sharpstown'
AS
SELECT BOOK_COPIES.BookID, BOOKS.Title, BOOK_COPIES.BranchID, LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies
FROM BOOK_COPIES
INNER JOIN BOOKS
ON BOOK_COPIES.BookID = BOOKS.BookID
INNER JOIN LIBRARY_BRANCH
ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
WHERE Title LIKE '%' +  ISNULL(@Title,Title) + '%'
AND BranchName = @BranchName
GO

EXEC [dbo].[copiesSharpstown] @Title = 'Lost'

/* 2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch? */

USE db_library
GO
CREATE PROCEDURE dbo.copiesAllBranches @Title varchar(50) = NULL
AS
SELECT BOOK_COPIES.BookID, BOOKS.Title, BOOK_COPIES.BranchID, LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies
FROM BOOK_COPIES
INNER JOIN BOOKS
ON BOOK_COPIES.BookID = BOOKS.BookID
INNER JOIN LIBRARY_BRANCH
ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
WHERE Title LIKE '%' +  ISNULL(@Title,Title) + '%'
GO

EXEC [dbo].[copiesAllBranches] @Title = 'Lost'

/* 3.) Retrieve the names of all borrowers who do not have any books checked out. */

USE db_library
GO
CREATE PROCEDURE dbo.noBooksOut
AS
SELECT BORROWER.CardNo, BORROWER.Name
FROM BORROWER
WHERE EXISTS (
	SELECT COUNT(*)
	FROM BOOK_LOANS
	WHERE BORROWER.CardNo = BOOK_LOANS.CardNo
	HAVING COUNT(*) < 1)
ORDER BY BORROWER.Name ASC;
GO

EXEC [dbo].[noBooksOut]

/* 4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address. */

USE db_library
GO
CREATE PROCEDURE dbo.dueTodaySharpstown
AS
SELECT BOOKS.Title, BORROWER.Name, BORROWER.Address
FROM BOOKS
INNER JOIN BOOK_LOANS
ON BOOKS.BookID = BOOK_LOANS.BookID
INNER JOIN BORROWER
ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE BOOK_LOANS.BranchID = 103
AND CONVERT(varchar(10), BOOK_LOANS.DateDue, 102) = CONVERT(varchar(10), GETDATE(),102)
GO

EXEC [dbo].[dueTodaySharpstown]

/* 5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */

USE db_library
GO
CREATE PROCEDURE dbo.totalLoanedByBranch
AS
SELECT LIBRARY_BRANCH.BranchName, COUNT(BOOK_LOANS.BranchID) 
FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS
	ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
GROUP BY LIBRARY_BRANCH.BranchName
GO

EXEC [dbo].[totalLoanedByBranch]

/* 6.) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out. */

USE db_library
GO
CREATE PROCEDURE dbo.totalOutByBorrower
AS
SELECT BORROWER.Name , BORROWER.Address, COUNT(BOOK_LOANS.CardNo) AS BooksOnLoan
FROM BORROWER
INNER JOIN BOOK_LOANS
	ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE EXISTS (
	SELECT COUNT(BOOK_LOANS.CardNo)
	FROM BOOK_LOANS
	WHERE BORROWER.CardNo = BOOK_LOANS.CardNo
	HAVING COUNT(*) > 5)
GROUP BY BORROWER.Address, BORROWER.Name
GO

EXEC [dbo].[totalOutByBorrower]

/* 7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central". */

USE db_library
GO
CREATE PROCEDURE dbo.totalOwnedByAuthor @AuthorName varchar(50) = NULL, @BranchName varchar(50) = NULL
AS
SELECT BOOKS.Title , SUM(BOOK_COPIES.Number_Of_Copies) AS CopiesOwned
FROM BOOKS
INNER JOIN BOOK_COPIES
	ON BOOKS.BookID = BOOK_COPIES.BookID
INNER JOIN BOOK_AUTHORS
	ON BOOKS.BookID = BOOK_AUTHORS.BookID
INNER JOIN LIBRARY_BRANCH
	ON BOOK_COPIES.BranchID = LIBRARY_BRANCH.BranchID
WHERE AuthorName LIKE '%' +  ISNULL(@AuthorName,AuthorName) + '%'
AND BranchName = ISNULL(@BranchName,BranchName)
GROUP BY BOOKS.Title
GO

EXEC [dbo].[totalOwnedByAuthor] @AuthorName = 'King', @BranchName = 'Central'