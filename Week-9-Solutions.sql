-- Question: Create a database with a table named Books with columns BookID, Title, Author, Genre, and PublicationYear. Populate the table with sample data.
CREATE DATABASE library; 

USE library;

CREATE TABLE books (
BookID INT PRIMARY KEY AUTO_INCREMENT,
Title VARCHAR(255) NOT NULL,
Author VARCHAR (255) NOT NULL,
Genre VARCHAR(255) NOT NULL,
PublicationYear INT NOT NULL
);

INSERT INTO books (BookID, Title, Author, Genre, PublicationYear)
VALUES (
1, "Pride and Prejudice", "Jane Austen", "Romance", 1813),
(2, "The Lord of the Rings", "J.R.R. Tolkien", "Fantasy", 1954),
(3, "To Kill a Mockingbird", "Harper Lee", "Fiction", 1960),
(4, "The Hitchhiker's Guide to the Galaxy", "Douglas Adams", "Science Fiction", 1979),
(5, "The Martian", "Andy Weir", "Science Fiction" , 2011),
(6, "One Hundred Years of Solitude", "Gabriel García Márquez", "Magical Realism", 1967),
(7, "Frankenstein; or, The Modern Prometheus", "Mary Shelley", "Gothic Fiction", 1818),
(8, "Dune", "Frank Herbert", "Science Fiction", 1965),
(9, "The Handmaid's Tale", "Margaret Atwood", "Dystopian Fiction", 1985),
(10, "The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 1925),
(11, "Moby Dick; or, The Whale", "Herman Melville", "Adventure", 1851),
(12, "1984", "George Orwell", "Dystopian Fiction", 1949), 
(13, "The Adventures of Huckleberry Finn", "Mark Twain", "Fiction", 1884),
(14, "Things Fall Apart", "Chinua Achebe", "Historical Fiction", 1958),
(15, "Beloved", "Toni Morrison", "Historical Fiction", 1987),
(16, "The God of Small Things", "Arundhati Roy", "Fiction", 1997),
(17, "Crime and Punishment", "Fyodor Dostoevsky", "Novel", 1866),
(18, "War and Peace", "Leo Tolstoy", "Historical Fiction", 1869);

SELECT * FROM books;

UPDATE books SET PublicationYear = 2020 WHERE BookID IN (3,5,7,11,17);

-- Write SQL queries to perform the following tasks:
-- 1. Retrieve all columns for books published in the year 2020.
SELECT * FROM books WHERE PublicationYear = 2020;

-- 2. Find the distinct genres available in the Books table.
SELECT DISTINCT Genre FROM books;

-- 3. Alias the column Author as BookAuthor in a query result
SELECT Author AS BookAuthor FROM books;

