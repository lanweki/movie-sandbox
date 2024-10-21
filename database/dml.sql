insert into genre (genre_name) values ('Drama');
insert into genre (genre_name) values ('Psychological Drama');
insert into genre (genre_name) values ('Workplace Drama');

insert into person (first_name, second_name, born_date)
values ('David', 'Fincher', '1962-08-28');
insert into person (first_name, second_name, born_date)
values ('Brad', 'Pitt', '1963-01-18');
INSERT INTO person (first_name, second_name, additional_name, born_date)
VALUES ('Edward', 'Norton', NULL, '1969-08-18');
INSERT INTO person (first_name, second_name, additional_name, born_date)
VALUES ('Helena', 'Bonham Carter', NULL, '1966-05-26');

insert into movie_trailer (file_url) values ('https://www.youtube.com/watch?v=BdJKm16Co6M&ab_channel=20thCenturyStudios');

INSERT INTO movie (movie_name, release_date, director_id, description, trailer_id)
VALUES ('Fight Club','1999-10-15', 1,
'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into much more.', 1);

-- Edward Norton (Actor) for Fight Club
INSERT INTO movie_actor (movie_id, actor_id)
VALUES (1, 2);  -- Fight Club (movie_id = 1), Edward Norton (actor_id = 2)

-- Brad Pitt (Actor) for Fight Club
INSERT INTO movie_actor (movie_id, actor_id)
VALUES (1, 3);  -- Fight Club (movie_id = 1), Brad Pitt (actor_id = 3)

-- Helena Bonham Carter (Actor) for Fight Club
INSERT INTO movie_actor (movie_id, actor_id)
VALUES (1, 4);  -- Fight Club (movie_id = 1), Helena Bonham Carter (actor_id = 4)

INSERT INTO movie_genre (movie_id, genre_id) VALUES (1, 1);
INSERT INTO movie_genre (movie_id, genre_id) VALUES (1, 2);
INSERT INTO movie_genre (movie_id, genre_id) VALUES (1, 3);