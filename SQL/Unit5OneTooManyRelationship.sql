
CREATE TABLE videos(
idvideos INTEGER NOT NULL,
title_video VARCHAR(250) NOT NULL,
length_minute VARCHAR NOT NULL,
url VARCHAR(250) NOT NULL,
CONSTRAINT pk_videos PRIMARY KEY(idvideos));


INSERT INTO videos(idvideos, title_video, length_minute, url)
VALUES (1,'Ella Fitzgerald - Christmas Songs', '42 minutes', 'https://www.youtube.com/watch?v=lhuapGdI3OA&t=1856s'),
(2,'Nat King Cole - "The Christmas Song', '3 minutes', 'https://www.youtube.com/watch?v=hwacxSnc4tI&list=PLH8CRYjniQT4XpbJnHlFqzr-w28ECpbfy&index=4'),
(3,'Faith Hill - Where Are You Christmas?', '4 minutes', 'https://www.youtube.com/watch?v=Bt3Y3HJpXQs&list=PLH8CRYjniQT4XpbJnHlFqzr-w28ECpbfy&index=3');

SELECT * FROM videos;

CREATE TABLE reviewers(
idreviewers INTEGER NOT NULL,
username VARCHAR(250) NOT NULL,
rating VARCHAR (250),
review VARCHAR(250) NOT NULL,
idvideos INTEGER NOT NULL,
CONSTRAINT pk_reviewers PRIMARY KEY(idreviewers),
CONSTRAINT fk_reviewers_videos_idvideos FOREIGN KEY(idvideos) REFERENCES videos(idvideos));

INSERT INTO reviewers(idreviewers, idvideos, username,rating,review)
VALUES(01,1,'joana',5,'Love the christmas song'),
(02, 3,'joe', 2, 'Too sensitive'),
(03, 2, ' franck',5, 'Nat King Cole is a true king');

SELECT * from reviewers;


SELECT * FROM videos
INNER JOIN reviewers ON videos.idvideos = reviewers.idvideos;