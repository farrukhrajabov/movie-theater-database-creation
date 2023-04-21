select * from customer
create table customer (
  customer_id SERIAL primary key,
  customer_name VARCHAR(100),
  phone INTEGER,
  email VARCHAR(100)
);

select * from tickets
create table Tickets (
  ticket_id SERIAL primary key,
  customer_id INTEGER references customer (customer_id),
  movie_id INTEGER references movie (movie_id),
  price DECIMAL(8, 2),
  seat_number INTEGER 
);

select * from Concession
create table  concession (
  concession_id SERIAL primary key,
  customer_id INTEGER references customer (customer_id),
  movie_id INTEGER references movie (movie_id),
  item VARCHAR(150) ,
  price DECIMAL(8, 2) 
);

select * from movie
create table Movie (
  movie_id SERIAL primary key,
  movie_title VARCHAR(100),
  movie_genre VARCHAR(100),
  movie_rating VARCHAR(50),
  release_date DATE,
  release_time TIME 
);
