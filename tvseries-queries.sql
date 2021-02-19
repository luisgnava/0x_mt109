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
  LeadingActor varchar(255),
  SupportingCast varchar(255)
);

INSERT INTO Actors (LastName, FirstName)
VALUES ('Cardinal','Tom Erichsen');
INSERT INTO Actors (LastName, FirstName)
VALUES ('Pages','Ellen');
INSERT INTO Actors (LastName, FirstName)
VALUES ('Castro','Matthew');

INSERT INTO Directors (LastName, FirstName)
VALUES ('Thomas','Bill');
INSERT INTO Directors (LastName, FirstName)
VALUES ('Bayer','Michealangelo');
INSERT INTO Directors (LastName, FirstName)
VALUES ('Tarantulino','Quentino');

INSERT INTO TVShows (NameShow, Director, LeadingActor, SupportingCast)
VALUES ('Dance, Baby!','Bill Thomas','Ellen Pages','Matthew Castro');

INSERT INTO TVShows (NameShow, Director, LeadingActor, SupportingCast)
VALUES ('Big Sister','Bill Thomas','Ellen Pages' 'Tom Erichsen Cardinal');

INSERT INTO TVShows (NameShow, Director, LeadingActor, SupportingCast)
VALUES ('So so Big Sister 2: The Sisterning','Bill Thomas','Ellen Pages', 'Tom Erichsen Cardinal, Matthew Castro');

INSERT INTO TVShows (NameShow, Director, LeadingActor, SupportingCast)
VALUES ('This show is straight up a reboot of Lost','Michealangelo Bayer','Matthew Castro', 'Ellen Pages, Tom Erichsen Cardinal');

INSERT INTO TVShows (NameShow, Director, LeadingActor, SupportingCast)
VALUES ('Big Yoshi','Bill Thomas','Michealangelo Bayer', 'Tom Erichsen Cardinal, Matthew Castro');

SELECT * FROM TVShows where NameShow = 'Big Sister';

SELECT Director, COUNT(*) c from TVShows GROUP BY Director HAVING c > 1;
