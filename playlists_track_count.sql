/*playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.*/

select count(*) , p.name
from playlist p join playlisttrack pt on p.playlistid = pt.playlistid
group by p.name