use NTUC1
--Create table Movie
Create table Movie(
Movie_Id int Primary Key,
Movie_Title varchar(100),
Rating int,
Year_Released int,
Budget int,
Category varchar(100),
Language varchar(100),
Ticket_Price money,
);

--Insert minimum 6 data
Insert into movie 
(Movie_Id, Movie_Title, Rating, Year_released,Budget,Category,Language, Ticket_Price)
values
(1, 'MEG2', 4,'2023',20000, 'Actions', 'English', 200),
(2, 'Transformers', 3, 2023, 30000, 'Actions', 'English', 500),
(3, 'Super Mario', 3, 2023,50000, 'CArtoon', 'English', 400),
(4, 'Baby Sharks', 5, 2017,70000, 'Cartoon', 'English',300),
(5, 'Underworld', 2, 2009, 90000, 'Actions', 'English', 500),	
(6, 'Power_Rangers', 2, 2019, 10000,'Actions', 'Chinese',600)

--Select
select * from Movie;

--Update Movie
update movie
set Movie_Title = 'One Piece',Rating=5, Year_released = 2023, Budget=10, Category = 'Actions', Language='Japanese' 
where Movie_Id = 6;

--Delete movie
delete from movie
where Movie_title = 'Meg2'

--Q2 Movies rating is more than 3
SELECT Rating, movie_title
FROM Movie
where rating >3; 

--Q3 Output with columns movie_Title, Rating, Language
select movie_title, Rating, Language
from movie;

--Q4 Movie_Title and Category released after 2022
Select Movie_Title,Category
From Movie
where year_released > 2022;

--Q5 Movie_Title Price 300 to 500
Select Movie_title
From movie
where ticket_price between 300 and 500;

--Q6 Sort Movie_Title in Descending Order
SELECT Movie_title
from movie
order by movie_title DESC;

--Q7 Count of Movie per each language
Select language, count(*) Each_language
from movie
group by language;

--Q8 Count of movies by Year_Released and Language, ascending order
SELECT Year_Released, count (Year_Released) AS "Total Count of Movies",
Language, count(language) AS "Total count of Language"
FROM Movie
Group BY Year_Released, Language;