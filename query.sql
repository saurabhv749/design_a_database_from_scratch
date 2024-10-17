SELECT
    songs.title,
    genre.name AS genre,
    songs_details.album,
    songs_details.release_year,
    songs_details.writer AS lyricist,
    songs_details.music_company AS music_label
FROM songs
INNER JOIN songs_details
    ON songs_details.song_id = songs.id
INNER JOIN genre
    ON genre.id = songs.genre_id