CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(255), 
	rel_date VARCHAR (255), 
	production_budget DOUBLE PRECISION, 
	worldwide_box_office DOUBLE PRECISION
);

CREATE TABLE directors (
	director_id SERIAL PRIMARY KEY, 
	director_name VARCHAR(255)
);

CREATE TABLE directedby (
	movie_id INT REFERENCES movies(movie_id),
    director_id INT REFERENCES directors(director_id)
);

CREATE TABLE genres (
	genre_id SERIAL PRIMARY KEY, 
	genre_name VARCHAR(255)
);

CREATE TABLE moviegenrelink (
	movie_id INT REFERENCES movies(movie_id),
    genre_id INT REFERENCES genres(genre_id)
);

CREATE TABLE actors (
	actor_id SERIAL PRIMARY KEY, 
	actor_name VARCHAR(255)
);

CREATE TABLE actedin (
	movie_id INT REFERENCES movies(movie_id),
    actor_id INT REFERENCES actors(actor_id)
);

CREATE TABLE ratings (
	rating_id SERIAL PRIMARY KEY, 
	rating_name VARCHAR(255)
);

CREATE TABLE movierating (
	movie_id INT REFERENCES movies(movie_id),
    rating_id INT REFERENCES ratings(rating_id)
);

CREATE TABLE studios (
	studio_id SERIAL PRIMARY KEY, 
	studio_name VARCHAR(255)
);

CREATE TABLE producedby (
	movie_id INT REFERENCES movies(movie_id),
    studio_id INT REFERENCES studios(studio_id)
);

CREATE TABLE reviews (
	rating_id SERIAL PRIMARY KEY,
	content VARCHAR (5000), 
	review_score DOUBLE PRECISION, 
	reviewer VARCHAR (255), 
	movie_id INT REFERENCES movies(movie_id)
);
