create table person (
	person_id serial primary key,
	first_name varchar(50) not null,
	second_name varchar(50) not null,
	additional_name varchar(50),
	born_date date not null
);

create table movie_trailer (
	movie_trailer_id serial primary key,
	file_url varchar(1024)
);

create table genre (
	genre_id serial primary key,
	genre_name varchar(50) not null unique
);

create table movie (
	movie_id serial primary key,
	movie_name varchar(50) not null,
	release_date date not null,
	director_id integer,
	description text not null,
	trailer_id integer,
	CONSTRAINT fk_director FOREIGN KEY (director_id) REFERENCES person(person_id) ON DELETE SET NULL,
	CONSTRAINT fk_trailer FOREIGN KEY (trailer_id) REFERENCES movie_trailer(movie_trailer_id) ON DELETE SET NULL
);

create table movie_actor(
	movie_actor_id serial primary key,
	movie_id integer not null,
	actor_id integer not null,
	CONSTRAINT movie_actor_unique UNIQUE (movie_id, actor_id),
	CONSTRAINT fk_movie FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    CONSTRAINT fk_actor FOREIGN KEY (actor_id) REFERENCES person(person_id) ON DELETE CASCADE
);

create table movie_genre(
	movie_genre_id serial primary key,
	movie_id integer not null,
	genre_id integer not null,
	CONSTRAINT movie_genre_unique UNIQUE (movie_id, genre_id),
	CONSTRAINT fk_movie_genre FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE
);