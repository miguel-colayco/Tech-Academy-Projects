CREATE DATABASE MyLibrary
GO
USE MyLibrary
GO
  
CREATE TABLE Publisher(
	Name VARCHAR(50) PRIMARY KEY,
	P_Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(12) NOT NULL
);

CREATE TABLE Book(
	BookId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL FOREIGN KEY REFERENCES Publisher(Name) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Book_Author(
	BookId INT NOT NULL FOREIGN KEY REFERENCES Book(BookId) ON UPDATE CASCADE ON DELETE CASCADE,
	AuthorName VARCHAR(50)
);

CREATE TABLE Library_Branch(
	BranchId INT PRIMARY KEY NOT NULL IDENTITY(100,1),
	BranchName VARCHAR(50) NOT NULL,
	Br_Address VARCHAR(50) NOT NULL,
);
CREATE TABLE Book_Copies(
	BookId INT NOT NULL FOREIGN KEY REFERENCES Book(BookId) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchId INT NOT NULL FOREIGN KEY REFERENCES Library_Branch(BranchId) ON UPDATE CASCADE ON DELETE CASCADE,
	No_Of_Copies INT NOT NULL
);
CREATE TABLE Borrower(
	CardNo INT PRIMARY KEY NOT NULL IDENTITY(1000,1),
	Name VARCHAR(50) NOT NULL,
	Bwr_Address VARCHAR(50),
	Phone VARCHAR(12)
);
CREATE TABLE Book_Loans(
	DateOut DATE,
	DueDate DATE,
	BookId  INT NOT NULL FOREIGN KEY REFERENCES Book(BookId) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchId INT NOT NULL FOREIGN KEY REFERENCES Library_Branch(BranchId) ON UPDATE CASCADE ON DELETE CASCADE,
	CardNo INT NOT NULL FOREIGN KEY REFERENCES Borrower(CardNo) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO Publisher
(Name, P_Address,Phone)
VALUES
('Henry Holt & Co','175 Fifth Ave New York, NY 10010','646-307-5095'),
('Scribner','153-157 Fifth Ave New York, NY 10010','212-632-4915'),
('Knopf Doubleday Publishing Group','1745 Broadway New York, NY 10019','212-940-7390'),
('Houghton Mifflin Harcourt','125 High Street Boston, MA 02110','617-351-5000'),
('Penguin Publishing Group','City of Westminster, London, England','111-000-5000'),
('Scholastic Inc','561 Broadway New York, NY 10012','800-724-6527'),
('Bookbyte Digital','2800 Pringle Road, Salem OR 97302','503-378-1500'),
('Random House Publishing','1745 Broadway New York,NY 10019','800-726-0600'),
('Tom Doherty Associates','175 Fifth Ave New York,NY 10010','888-330-8477'),
('Lulu.com','Morrisville, North Carolina, United States','844-212-0689'),
('Crown/Archetype','222 Rosewood Drive, Danvers, MA 01923','978-750-8400')
;
INSERT INTO Book
(Title,PublisherName)
VALUES
('The Lost Tribe','Henry Holt & Co'),
('The Stand','Knopf Doubleday Publishing Group'),
('It','Scribner'),
('The Shining','Knopf Doubleday Publishing Group'),
('The Hunt for Red October','Penguin Publishing Group'),
('The Hobbit','Houghton Mifflin Harcourt'),
('Rainbow Six','Penguin Publishing Group'),
('The Hunger Games','Scholastic Inc'),
('The Fellowship of the Ring','Houghton Mifflin Harcourt'),
('Heart of Darkness','Bookbyte Digital'),
('Catching Fire','Scholastic Inc'),
('Lord of the Flies','Penguin Publishing Group'),
('The Sum of All Fears','Penguin Publishing Group'),
('The Guns of August','Random House Publishing'),
('Halo:The Thursday War','Tom Doherty Associates'),
('2001:A Space Odyssey','Penguin Publishing Group'),
('Cracking the Coding Interview','Lulu.com'),
('Halo:The Fall of Reach','Tom Doherty Associates'),
('All We Ever Wanted','Random House Publishing'),
('Sharp Objects','Crown/Archetype')
;
INSERT INTO Book_Author
(BookId,AuthorName)
VALUES
(8,'Suzanne Collins'),
(2,'Stephen King'),
(4,'Stephen King'),
(6,'JRR Tolkein'),
(5,'Tom Clancy'),
(3,'Stephen King'),
(1,'Edward Marriott'),
(7,'Tom Clancy'),
(18,'Eric Nylund'),
(19,'Emily Giffin'),
(9,'JRR Tolkein'),
(10,'Joseph Conrad'),
(13,'Tom Clancy'),
(20,'Gillian Flynn'),
(11,'Suzanne Collins'),
(12,'William Golding'),
(14,'Barbara Tuchman'),
(17,'Chinmoy Mukherjee'),
(15,'Karen Traviss'),
(16,'Arthur C. Clarke')
;

INSERT INTO Library_Branch
(BranchName, Br_Address)
VALUES
('Sharpstown','454 N Broadway, Portland OR'),
('Central','765 NE Century Blvd, Hillsboro OR'),
('Westside','432 NW Cedar Hills, Beaverton OR'),
('Eastside','657 SE Division, Portland OR')
;
INSERT INTO Book_Copies
(BookId,BranchId,No_Of_Copies)
VALUES
(6,100,2),
(4,100,4),
(1,100,3),
(2,100,4),
(8,100,5),
(12,100,1),
(10,100,3),
(7,100,4),
(14,101,2),
(9,100,2),
(13,100,3),
(18,101,2),
(4,101,2),
(1,101,4),
(2,101,4),
(8,101,3),
(12,101,1),
(10,101,3),
(20,101,2),
(19,101,2),
(11,101,3),
(16,102,2),
(4,102,4),
(1,102,3),
(2,102,4),
(5,101,3),
(8,102,5),
(12,102,1),
(10,102,3),
(7,102,4),
(9,102,2),
(11,102,3),
(18,103,2),
(4,103,2),
(17,103,4),
(2,103,4),
(3,103,3),
(15,103,1),
(10,103,3),
(20,103,2),
(19,103,2),
(11,103,3),
(5,102,3)
;

INSERT INTO Borrower
(Name,Bwr_Address,Phone)
VALUES
('Stacey Johnson','42 NW 65th St, Portland OR','503-521-4523'),
('Jenny McCarthy','549 SW Century Blvd Hillsboro OR','503-867-5309'),
('Jeff Gordon','970 N Elm St Portland OR','503-445-6721'),
('John Olsen','54 W Burnside, Portland OR','503-970-2198'),
('Tony Stark','90 E Birch St, Portland OR','503-354-6590'),
('Natasha Romanov','760 N Sunnyside, Portland OR','503-612-4076'),
('Sigmund Freud','6190 SE Stark, Portland OR','503-490-3267'),
('Shaun Cassidy','1001 E Burnside, Portland OR','503-700-5437')
;

INSERT INTO Book_Loans
(DateOut,DueDate,BookId,BranchId,CardNo)
VALUES
('2018-05-30','2018-07-21',6,100,1002),
('2018-06-02','2018-07-24',5,102,1001),
('2018-06-15','2018-07-21',4,100,1004),
('2018-05-19','2018-07-22',11,103,1003),
('2018-05-24','2018-07-23',18,101,1000),
('2018-06-02','2018-07-24',16,102,1001),
('2018-06-16','2018-07-21',1,100,1002),
('2018-05-22','2018-07-22',20,101,1003),
('2018-05-20','2018-07-21',2,103,1004),
('2018-06-24','2018-07-23',12,102,1000),
('2018-05-30','2018-07-21',4,103,1003),
('2018-06-02','2018-07-24',4,101,1001),
('2018-06-15','2018-07-21',12,102,1004),
('2018-05-19','2018-07-22',10,101,1003),
('2018-05-20','2018-07-23',3,103,1000),
('2018-06-02','2018-07-24',7,102,1001),
('2018-06-13','2018-07-21',9,102,1000),
('2018-05-19','2018-07-22',5,102,1004),
('2018-05-20','2018-07-25',2,103,1000),
('2018-06-20','2018-07-22',5,101,1003),
('2018-05-30','2018-07-23',2,100,1001),
('2018-06-02','2018-07-25',4,101,1001),
('2018-06-15','2018-07-21',7,102,1004),
('2018-05-19','2018-07-22',20,101,1003),
('2018-05-24','2018-07-23',11,101,1000),
('2018-06-02','2018-07-22',6,100,1001),
('2018-06-16','2018-07-21',7,100,1002),
('2018-05-22','2018-07-22',5,102,1004),
('2018-05-20','2018-07-27',2,103,1001),
('2018-06-24','2018-07-24',12,102,1000),
('2018-05-30','2018-07-21',2,100,1002),
('2018-06-02','2018-07-24',10,103,1003),
('2018-06-15','2018-07-22',8,102,1004),
('2018-05-19','2018-07-21',20,101,1000),
('2018-05-20','2018-07-26',3,103,1002),
('2018-06-02','2018-07-24',17,103,1001),
('2018-06-13','2018-07-21',9,102,1002),
('2018-05-19','2018-07-22',2,103,1003),
('2018-05-20','2018-07-21',3,103,1002),
('2018-06-20','2018-07-25',5,101,1004),
('2018-06-02','2018-07-21',9,100,1001),
('2018-06-16','2018-07-22',13,100,1003),
('2018-05-22','2018-07-22',5,102,1001),
('2018-05-20','2018-07-27',2,103,1000),
('2018-06-24','2018-07-24',12,102,1003),
('2018-05-30','2018-07-25',2,100,1001),
('2018-06-02','2018-07-24',8,101,1002),
('2018-06-15','2018-07-22',8,102,1004),
('2018-05-19','2018-07-21',19,101,1002),
('2018-05-20','2018-07-27',12,100,1001),
('2018-06-02','2018-07-24',17,103,1003)
;




SELECT a1.No_Of_Copies ,a2.BranchName
FROM Book_Copies a1
INNER JOIN Library_Branch a2 ON a2.BranchId = a1.BranchId
INNER JOIN Book a3 ON a3.BookId = a1.BookId
WHERE BranchName = 'Sharpstown' AND Title = 'The Lost Tribe'


SELECT a1.No_Of_Copies ,a2.BranchName
FROM Book_Copies a1
INNER JOIN Library_Branch a2 ON a2.BranchId = a1.BranchId
INNER JOIN Book a3 ON a3.BookId = a1.BookId
WHERE Title = 'The Lost Tribe'

SELECT Name
FROM Borrower
WHERE NOT EXISTS (SELECT CardNo FROM Book_Loans WHERE Borrower.CardNo = Book_Loans.CardNo);

SELECT a3.Title,a4.Name,a4.Bwr_Address
FROM Library_Branch a1
INNER JOIN Book_Loans a2 ON a2.BranchId = a1.BranchId
INNER JOIN Book a3 ON a3.BookId = a2.BookId
INNER JOIN Borrower a4 ON a4.CardNo = a2.CardNo
WHERE DueDate = '2018-07-22' AND BranchName = 'Sharpstown'

SELECT BranchName,COUNT(BookId)
FROM Library_Branch
INNER JOIN Book_Loans ON Book_Loans.BranchId = Library_Branch.BranchId
WHERE Library_Branch.BranchName = 'Eastside'
GROUP BY BranchName

   
SELECT a1.Name, a1.Bwr_Address,COUNT(a2.CardNo)
FROM Borrower a1
INNER JOIN Book_Loans a2 ON a2.CardNo = a1.CardNo
GROUP BY a1.Name,a1.Bwr_Address
HAVING COUNT(a2.CardNo) > 5

SELECT a1.Title,a3.No_Of_Copies
FROM Book a1
INNER JOIN Book_Author a2 ON a2.BookId = a1.BookId
INNER JOIN Book_Copies a3 ON a3.BookId = a1.BookId    
INNER JOIN Library_Branch a4 ON a4.BranchId = a3.BranchId
WHERE a2.AuthorName = 'Stephen King' AND a4.BranchName = 'Central'

CREATE PROCEDURE dbo.GetCopies @Title nvarchar(50) = NULL, @BranchName nvarchar(50) = NULL
AS
	SELECT a1.No_Of_Copies ,a2.BranchName
	FROM Book_Copies a1
	INNER JOIN Library_Branch a2 ON a2.BranchId = a1.BranchId
	INNER JOIN Book a3 ON a3.BookId = a1.BookId
	WHERE Title LIKE '%' + ISNULL(@Title,Title) + '%'
	AND BranchName = ISNULL(@BranchName,BranchName)
GO

EXEC [dbo].[GetCopies] @Title = 'The Lost Tribe' 
EXEC [dbo].[GetCopies] @Title = 'The Lost Tribe' ,@BranchName = 'Sharpstown'

CREATE PROC dbo.GetNoLoanBorrowers
AS
SELECT Name
FROM Borrower
WHERE NOT EXISTS (SELECT CardNo FROM Book_Loans WHERE Borrower.CardNo = Book_Loans.CardNo);
GO

EXEC [dbo].[GetNoLoanBorrowers]

CREATE PROC dbo.GetDueToday @Today DATE = NULL, @BranchName nvarchar(50) = NULL
AS
	SELECT a3.Title,a4.Name,a4.Bwr_Address
	FROM Library_Branch a1
	INNER JOIN Book_Loans a2 ON a2.BranchId = a1.BranchId
	INNER JOIN Book a3 ON a3.BookId = a2.BookId
	INNER JOIN Borrower a4 ON a4.CardNo = a2.CardNo
	WHERE DueDate = @Today AND BranchName = ISNULL(@BranchName,BranchName)
GO

EXEC [dbo].[GetDueToday] @Today = '2018-07-21', @BranchName = 'Sharpstown'

CREATE PROC dbo.CountBooksOut @BranchName nvarchar(50) = NULL
AS
	SELECT BranchName,COUNT(BookId)
	FROM Library_Branch
	INNER JOIN Book_Loans ON Book_Loans.BranchId = Library_Branch.BranchId
	WHERE Library_Branch.BranchName = ISNULL(@BranchName,BranchName)
	GROUP BY BranchName
GO

EXEC   [dbo].[CountBooksOut]

CREATE PROC dbo.GetLargeBorrowers @Threshold INT
AS
	SELECT a1.Name, a1.Bwr_Address,COUNT(a2.CardNo)
	FROM Borrower a1
	INNER JOIN Book_Loans a2 ON a2.CardNo = a1.CardNo
	GROUP BY a1.Name,a1.Bwr_Address
	HAVING COUNT(a2.CardNo) > @Threshold
GO

EXEC [dbo].[GetLargeBorrowers] @Threshold = 5

CREATE PROC [dbo].[GetTitleAndCopies] @Author nvarchar(50) = NULL, @Branch nvarchar(50) = NULL
AS
	SELECT a1.Title,a3.No_Of_Copies
	FROM Book a1
	INNER JOIN Book_Author a2 ON a2.BookId = a1.BookId
	INNER JOIN Book_Copies a3 ON a3.BookId = a1.BookId    
	INNER JOIN Library_Branch a4 ON a4.BranchId = a3.BranchId
	WHERE a2.AuthorName = ISNULL(@Author,AuthorName) AND a4.BranchName = ISNULL(@Branch,BranchName)
GO


EXEC [dbo].[GetTitleAndCopies] @Author = 'Stephen King',@Branch = 'Central'