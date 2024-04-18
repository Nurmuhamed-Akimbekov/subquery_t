create database for_task_lms;
create type gender;
drop type gender;
create type gender as enum ('male','female');
drop type gender cascade;
create type gender as enum ('Male','Female');
create type genre as enum ('detective','drama','history','romance','biography','fantasy');
drop type genre cascade;
create type genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANS','BIOGRAPHY','FANTASY');

create table publishers
(
    name varchar
);

create table authors
(
    first_name    varchar,
    last_name     varchar,
    email         varchar unique,
    date_of_birth date,
    country       varchar,
    gender        gender
);
alter table authors
    add column gender gender;
-- alter table authors add unique (email);
create table books
(
    name           varchar,
    country        varchar,
    published_year date,
    price          numeric,
    genre          genre
);
alter table books
    add column genre genre;
create table languages
(
    language varchar
);

alter table publishers
    add column id serial primary key;
alter table authors
    add column id serial primary key;
alter table languages
    add column id serial primary key;
alter table languages
    alter column language set not null;
alter table books
    add column id            serial primary key,
    add column publishers_id int references publishers (id),
    add column authors_id    int references authors (id),
    add column languages_id  int references languages (id);
alter table books
drop column publishers_id,
    drop column authors_id,
    drop column languages_id;
alter table books
    add column publisher_id int references publishers (id),
    add column author_id    int references authors (id),
    add column language_id  int references languages (id);

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stodebrugge0@jugem.jp', '9/25/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/31/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/16/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/24/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/29/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/14/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/29/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/17/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/28/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/28/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/17/1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values ('Taina', 'Russia', '11/12/2021', '568', 'DETECTIVE', '5', '12', '6'),
       ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANS', '5', '13', '11'),
       ('Homo Faber', 'Germany', '4/10/2022', '772', 'FANTASY', '3', '5', '3'),
       ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', 'DETECTIVE', '3', '3', '10'),
       ('Lord of the Flies', 'United States', '7/11/2015', '900', 'FANTASY', '1', '2', '4'),
       ('Un soir au club', 'France', '1/12/2018', '480', 'DRAMA', '2', '1', '1'),
       ('Voina', 'Russia', '12/6/2004', '880', 'HISTORY', '5', '4', '13'),
       ('Sun Tzu', 'China', '9/5/2022', '349', 'HISTORY', '4', '4', '2'),


       ('Emil und die Detektive', 'Germany', '6/11/2010', '228', 'DETECTIVE', '3', '5', '10'),
       ('Coule la Seine', 'France', '3/1/2015', '732', 'FANTASY', '2', '6', '1'),
       ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANS', '5', '14', '13'),
       ('Fantastic Mr Fox', 'United States', '3/10/2018', '309', 'FANTASY', '1', '9', '8'),
       ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANS', '2', '6', '9'),
       ('“The Death of Ivan Ilyich', 'Russia', '9/24/2000', '814', 'DRAMA', '5', '6', '6'),
       ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANS', '2', '8', '5'),
       ('Die Verwandlung', 'Germany', '6/19/2008', '305', 'DETECTIVE', '3', '7', '12'),
       ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', 'DETECTIVE', '3', '3', '3'),
       ('LÉtranger', 'France', '11/14/2017', '422', 'ROMANS', '2', '8', '5'),
       ('Lao Tse', 'China', '7/16/2005', '900', 'FANTASY', '4', '4', '2'),
       ('Semya', 'Russia', '4/12/2004', '194', 'DRAMA', '5', '13', '11'),
       ('Empty World', 'United States', '1/4/2008', '324', 'FANTASY', '1', '11', '15'),
       ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANS', '3', '5', '10'),
       ('The Fault in Our Stars', 'United States', '2/13/2008', '396', 'ROMANS', '1', '9', '4'),
       ('Die R uber', 'Germany', '6/25/2020', '300', 'ROMANS', '3', '7', '12'),
       ('Jung Chang', 'China', '5/14/2021', '600', 'HISTORY', '4', '10', '7'),
       ('Les Aventures de Tintin', 'France', '4/10/2015', '582', 'DRAMA', '2', '1', '5'),
       ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', 'DETECTIVE', '3', '5', '10'),
       ('Amy Tan', 'China', '1/9/2023', '486', 'DRAMA', '4', '4', '7'),
       ('Krasnaya luna', 'Russia', '2/7/2020', '550', 'FANTASY', '5', '12', '11'),
       ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY', '1', '2', '15');


--            Запросы:
-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select name, published_year, books.genre
from books;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select country, count(*) as count_of_authors
from authors
group by country;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select *
from books
where published_year between '2020-1-1' and '2023-1-1';
-- 4.Детектив китептер жана алардын аттары чыксын.
select name, books.genre
from books
where books.genre = 'DETECTIVE';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name, ' ', last_name) as authors_full_name
from authors;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(first_name, ' ', last_name) as authors_full_name, country
from authors
where country in ('Germany', 'France')
order by first_name, last_name;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select name, country, published_year, price, genre
from books
where price < 500
  and genre not in ('ROMANS');
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select *
from authors
where authors.gender = 'Female'
order by first_name
    limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select *
from authors
where email like '%.com'
  and first_name like '____'
  and gender = 'Female';
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country, count(*)
from authors
group by country
order by count(*) desc;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country, count(*)
from authors
group by country
having count(*) = 3
order by authors.country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select genre,
       sum(price),
       count(books)
from books
group by books.genre
order by count(books) desc;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select min(books.price)
from books
where books.genre in ('ROMANS', 'DETECTIVE');
select genre, books.price
from books
where books.genre in ('ROMANS', 'DETECTIVE')
group by genre, books.price
order by price;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select genre, count(books) as count_of_books
from books
where books.genre in ('HISTORY', 'BIOGRAPHY')
group by genre;
select *
from books
where books.genre = 'BIOGRAPHY'; -- checking
select *
from books
where books.genre = 'HISTORY';
--checking
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
SELECT B.name, P.name
FROM books B
         INNER JOIN publishers P ON P.id = B.publisher_id
WHERE B.language_id IN (SELECT ID FROM languages L);
-------------------------------------------------------------------------
SELECT B.name AS BOOK_NAME, P.name AS PUBLISHED_NAME, L.language
FROM books B
         INNER JOIN languages L ON L.id = B.language_id
         INNER JOIN publishers P ON P.id = B.publisher_id;
-- 16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
SELECT authors, P.name
FROM authors
         RIGHT JOIN books B ON B.id = B.author_id
         RIGHT JOIN publishers P ON P.id = B.publisher_id;

SELECT A, P.name
FROM books B
         LEFT JOIN authors A ON A.id = B.author_id
         RIGHT JOIN publishers P ON P.id = B.publisher_id;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
SELECT CONCAT(A.first_name, ' ', A.last_name) AS AUTHORS_FULL_NAME, B.name AS BOOK_NAME
FROM authors A
         INNER JOIN books B ON A.id = B.author_id
ORDER BY AUTHORS_FULL_NAME;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
SELECT L.language, count(B.id)
FROM books B
         INNER JOIN languages L ON L.ID = B.language_id
GROUP BY L.language
ORDER BY count(B.id);
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
SELECT P.name, round(avg(B.price))
FROM publishers P
         INNER JOIN books b on P.id = B.publisher_id
GROUP BY P.name;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
SELECT B.name AS BOOK_NAME, CONCAT(A.first_name, ' ', A.last_name) AS AUTHORS_FULL_NAME, published_year
FROM books B
         INNER JOIN authors A ON A.id = B.author_id
WHERE B.published_year BETWEEN '1/1/2010' AND '1/1/2015';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
SELECT CONCAT(A.first_name, ' ', A.last_name) AS AUTHORS_FULL_NAME, sum(B.price)
FROM books B
         INNER JOIN authors A ON A.id = B.author_id
WHERE published_year BETWEEN '1/1/2010' AND '1/1/2015'
GROUP BY AUTHORS_FULL_NAME;