-- create tables
CREATE TABLE genre(
    id integer PRIMARY KEY,
    name varchar(20)
);

CREATE TABLE songs(
    id integer PRIMARY KEY,
    title varchar(200),
    genre_id integer REFERENCES genre(id)
);

CREATE TABLE artists(
    id integer PRIMARY KEY,
    name varchar(100),
    dob date
);

CREATE TABLE tags(
    id integer PRIMARY KEY,
    name varchar(20)
);

CREATE TABLE languages(
    id integer PRIMARY KEY,
    name varchar(20)
);

CREATE TABLE songs_artists(
    artist_id integer REFERENCES artists(id),
    song_id integer REFERENCES songs(id),
    PRIMARY KEY(artist_id,song_id)
);

CREATE TABLE songs_details(
    id integer PRIMARY KEY,
    song_id integer REFERENCES songs(id),
    album varchar(100),
    release_year integer,
    duration_seconds integer,
    writer varchar(200), 
    music_company varchar(100)
);

CREATE TABLE songs_tags(
    song_id integer REFERENCES songs(id),
    tag_id integer REFERENCES tags(id)
);

CREATE TABLE songs_languages(
    song_id integer REFERENCES songs(id),
    language_id integer REFERENCES languages(id)
);

-- add genre
INSERT INTO genre (id,name)
VALUES (1,'Party');
INSERT INTO genre (id,name)
VALUES (2,'Pop');
INSERT INTO genre (id,name)
VALUES (3,'Retro');

-- add languages
INSERT INTO languages
VALUES (1,'Hindi');
INSERT INTO languages
VALUES (2,'Punjabi');
INSERT INTO languages
VALUES (3,'English');

-- add tags
INSERT INTO tags
VALUES (1,'Bollywood');
INSERT INTO tags
VALUES (2,'Evergreen');
INSERT INTO tags
VALUES (3,'Indie');

-- add artists
INSERT INTO artists
VALUES (1,'Lata Mangeshkar','1929-09-28T00:00:00.000Z');
INSERT INTO artists
VALUES (2,'Kishore Kumar','1929-08-04T00:00:00.000Z');
INSERT INTO artists
VALUES (3,'Alan Walker','1997-08-24T00:00:00.000Z');
INSERT INTO artists
VALUES (4,'Vishal Mishra','1991-12-08T00:00:00.000Z');
INSERT INTO artists
VALUES (5,'Pritam','1971-06-14T00:00:00.000Z');
INSERT INTO artists
VALUES (6,'Diljit Dosanjh','1984-01-06T00:00:00.000Z');
INSERT INTO artists
VALUES (7,'Pitbull','1981-01-15T00:00:00.000Z');
INSERT INTO artists
VALUES (8,'Neeraj Sridhar','1978-06-23T00:00:00.000Z');

-- insert song data
INSERT INTO songs (id, title, genre_id)
VALUES (1,'Dekha Ek Khwaab',3);
INSERT INTO songs_details (id, song_id, album, release_year, duration_seconds, writer, music_company)
VALUES (1,1,'Silsila',1981,321,'Shiv-Hari','Saregama India Ltd.');
INSERT INTO songs_artists (artist_id,song_id)
VALUES (1,1);
INSERT INTO songs_artists (artist_id,song_id)
VALUES (2,1);
INSERT INTO songs_languages (song_id,language_id)
VALUES (1, 1);
INSERT INTO songs_tags (song_id,tag_id)
VALUES (1, 2);
INSERT INTO songs_tags
VALUES (1, 1);

-- insert song data
INSERT INTO songs
VALUES (2,'Children of The ',2);
INSERT INTO songs_details
VALUES (2, 2,'Children of The Sun',2024,197,'Alan Walker, Pritam','Warner Music India');
INSERT INTO songs_artists
VALUES (3, 2);
INSERT INTO songs_artists
VALUES (4, 2);
INSERT INTO songs_artists
VALUES (5, 2);
INSERT INTO songs_languages
VALUES (2, 3);
INSERT INTO songs_languages
VALUES (2, 1);
INSERT INTO songs_tags
VALUES (2, 3);

-- insert song data
INSERT INTO songs
VALUES (3,'Magic',2);
INSERT INTO songs_details
VALUES (3, 3,'Magic | Coke Studio Bharat',2024,245,'Channi Nattan','Universal Music Group');
INSERT INTO songs_artists
VALUES (6, 3);
INSERT INTO songs_languages
VALUES (3, 2);
INSERT INTO songs_tags
VALUES (3, 3);

-- insert song data
INSERT INTO songs
VALUES (4,'Bhool Bhulaiyaa 3 - Title Track (feat. Pitbull)',1);
INSERT INTO songs_details
VALUES (4, 4,'Bhool Bhulaiyaa 3',2024,230,'Sameer','T-Series');
INSERT INTO songs_artists
VALUES (6, 4);
INSERT INTO songs_artists
VALUES (7, 4);
INSERT INTO songs_artists
VALUES (8, 4);
INSERT INTO songs_languages
VALUES (4, 1);
INSERT INTO songs_languages
VALUES (4, 2);
INSERT INTO songs_languages
VALUES (4, 3);
INSERT INTO songs_tags
VALUES (4, 1);