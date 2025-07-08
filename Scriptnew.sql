-- Связь между жанром и артистом 
CREATE TABLE if not exists Muzikants (
	id SERIAL PRIMARY KEY,
	name VARCHAR (60) NOT null
);
create table if not exists Types_muzik(
	id SERIAL primary key ,
	name  VARCHAR(60) not null
);
create table if not exists  muzikants_types(
	Muzikants_id INTEGER references Muzikants(id),
	Types_muzik_id INTEGER references Types_muzik(id),
	primary key (Muzikants_id, Types_muzik_id)
);
-- Артисты к Альбомам 
create table if not exists Album (
	id SERIAL primary key,
	name VARCHAR (60) not null 
);
create table if not exists muzikants_Album(
Artist_id INTEGER not null references Muzikants(id),
Album_id INTEGER not null references Album(id),
primary key (Artist_id,Album_id)
);

create table if not exists trek (
	id SERIAL primary key,
	name VARCHAR (60) not null,
	album_id INTEGER references Album(id)
);
create table if not exists Sbornik(
id SERIAL primary key,
name VARCHAR (60) not null,
year_relaese  INTEGER not null
);
create table if not exists SborinktoAlbum(
Album_id INTEGER references Album(id),
Sbornik_id INTEGER references Sbornik(id),
primary key (Album_id,sbornik_id)
);
