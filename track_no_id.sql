/*tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.*/

select t.name as trackname, a.title as albumname,g.name as genrename,m.name as mediatype
from track t join album a on t.albumid = a.albumid
join genre g on t.genreid = g.genreid
join mediatype m on t.mediatypeid=m.mediatypeid
