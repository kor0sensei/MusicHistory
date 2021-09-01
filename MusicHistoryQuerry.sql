--#1
--SELECT * FROM Genre

--#2
--SELECT * FROM Artist
--ORDER BY ArtistName

--#3
--SELECT 
--Title,
--ArtistName
--FROM Song
--INNER JOIN Artist
--ON Song.ArtistId = Artist.Id

--#4
--SELECT DISTINCT
--ArtistName,
--Name
--FROM Artist
--INNER JOIN Album
--ON Album.ArtistId = Artist.Id
--INNER JOIN Genre
--On Album.GenreId = Genre.Id
--WHERE GenreId = 1

--#5
--SELECT DISTINCT
--ArtistName,
--Name
--FROM Artist
--INNER JOIN Album
--ON Album.ArtistId = Artist.Id
--INNER JOIN Genre
--On Album.GenreId = Genre.Id
--WHERE GenreId = 2
--OR
--GenreId = 4

--#6
--SELECT *
--FROM Album
--WHERE AlbumLength = 0

--#7
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Lil Uzi Vert', 2016)

--#8
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Lil Uzi Vert Vs. The World', '4/15/2016', 2032, 'Atlantic Records', 33, 13)

--#9
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Money Longer', 399, '4/15/2016', 13, 33, 23)
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Hi Roller', 276, '4/15/2016', 13, 33, 23)
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Baby Are You Home', 230, '4/15/2016', 13, 33, 23)

--#10
SELECT 
Album.Title,
Song.Title,
ArtistName
FROM Song
LEFT JOIN Album
ON song.AlbumId = Album.Id
LEFT JOIN Artist
ON Album.ArtistId = Artist.Id
WHERE ArtistName = 'Lil Uzi Vert'