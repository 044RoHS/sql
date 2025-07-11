-- Связь между жанром и артистом 
CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR (60) NOT NULL
);
CREATE TABLE IF NOT EXISTS Genres(
	id SERIAL PRIMARY KEY,
	name  VARCHAR(60) NOT NULL
);
 CREATE TABLE IF NOT EXISTS ArtistGenres(
	Artist_id INTEGER REFERENCES Artists(id),
	Generes_id INTEGER REFERENCES Genres(id),
	PRIMARY KEY (Artist_id, Generes_id)
);
-- Артисты к Альбомам 
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR (60) NOT NULL 
);
CREATE TABLE IF NOT EXISTS ArtistAlbum(
Artist_id INTEGER NOT NULL REFERENCES Artists(id),
Album_id INTEGER NOT NULL REFERENCES Album(id),
PRIMARY KEY (Artist_id,Album_id)
);
CREATE TABLE IF NOT EXISTS Music (
	id SERIAL PRIMARY KEY,
	name VARCHAR (60) NOT NULL,
	album_id INTEGER REFERENCES Album(id)
);
CREATE TABLE IF NOT EXISTS Sbornik(
id SERIAL PRIMARY KEY,
name VARCHAR (60) NOT NULL,
year_relaese INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS SborinktoAlbum(
Album_id INTEGER REFERENCES Album(id),
Sbornik_id INTEGER REFERENCES Sbornik(id),
PRIMARY KEY (Album_id,sbornik_id)
);

