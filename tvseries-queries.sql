DROP DATABASE IF EXISTS directorsActors;

CREATE DATABASE directorsActors;

USE directorsActors;

CREATE TABLE Actors (
  LastName varchar(255),
  FirstName varchar(255)
);

CREATE TABLE Directors (
  LastName varchar(255),
  FirstName varchar(255)
);

CREATE TABLE TVShows (
  NameShow varchar(255),
  Director varchar(255),
  Actor varchar(255)
);

INSERT INTO Actors (LastName, FirstName)
VALUES ('Cardinal','Tom Erichsen');

INSERT INTO Directors (LastName, FirstName)
VALUES ('Thomas','Bill');

INSERT INTO TVShows (NameShow, Director, Actors)
VALUES ('Dance, Baby!','Bill Thomas','Cardinal Tom Erichsen');
