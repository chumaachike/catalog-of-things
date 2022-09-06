-- drop database catalo-of-things if it is aready created
DROP DATABASE IF EXISTS catalog_of_things; 
 -- create catalog_of_things database
CREATE DATABASE catalog_of_things;


- Drop table genres if exists 
 DROP TABLE IF EXISTS genres;

 -- create table genres 
 CREATE TABLE genres(id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR(255) NOT NULL,
CONSTRAINT pk_genres PRIMARY KEY(id)
  )


  --drop table labels if exists
 DROP TABLe IF exists labels
 -- create table labels 
   CREATE TABLE labels( id INT GENERATED ALWAYS AS IDENTITY,title VARCHAR(255) NOT NULL,
    color VARCHAR(100) NOT NULL, CONSTRAINT pk_labels PRIMARY KEY(id)
  )
-- Drop table sources if exists
 DROP TABLe IF exists sources
 -- create table sources

 CREATE TABLE sources( id INT GENERATED ALWAYS AS IDENTITY,
 name VARCHAR(255) NOT NULL,ONSTRAINT pk_sources PRIMARY KEY(id)
  )

  -- drop authors table 
DROP TABLE  IF EXISTS authors;

--create authors table

 CREATE TABLE authors (id  INT GENERATED ALWAYS AS IDENTITY, first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255)  NOT NULL,  CONSTRAINT pk_authors PRIMARY KEY(id)
 )

 CREATE TABLE music_albums(id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  author_id INT,
  source_id INT,
  label_id INT, 
  publish_date DATE, 
  archived BOOLEAN,
  spotify BOOLEAN,
  CONSTRAINT pk_albums PRIMARY KEY (id),
  CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id),
  CONSTRAINT fk_genres FOREIGN KEY (genre_id) REFERENCES genres(id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels(id),
  CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES sources(id)
   )
 CREATE TABLE game(id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  author_id INT, 
  source_id INT, 
  label_id INT, 
  publish_date DATE, 
  archived BOOLEAN, 
  multiplayer BOOLEAN, 
  last_played_at DATE,
  CONSTRAINT pk_albums PRIMARY KEY (id),
  CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id),
  CONSTRAINT fk_genres FOREIGN KEY (genre_id) REFERENCES genres(id),
  CONSTRAINT fk_label FOREIGN KEY (label_id) REFERENCES labels(id),
  CONSTRAINT fk_source FOREIGN KEY (source_id) REFERENCES sources(id)
  )