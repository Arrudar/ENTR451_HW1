-- Applied some of table manipulation conceps to achieve expected user results

-- User stories
--
-- - As a guest, I want to see a list of movies with the title, year released,
--   MPAA rating, and studio information.

.print "Movies List"
.print "-----------"
.print ""
SELECT * FROM movies;

.print ""
.print ""


-- - As a guest, I want to see the movies which a single studio has produced.

.print "Movies per Studio"
.print "-----------"
.print ""
SELECT studio, title from movies;

.print ""
.print ""

-- - As a guest, I want to see each movie's cast including each actor's
--   name and the name of the character they portray.

.print "Casting"
.print "-----------"
.print ""
SELECT movie_title, actor, character from top_cast;

.print ""
.print ""

-- - As a guest, I want to see the movies which a single actor has acted in.
.print "Actors and Movies"
.print "-----------"
.print ""
SELECT movie_title, actor 
from top_cast
GROUP BY actor
ORDER BY movie_title;

.print ""
.print ""

-- * Note: The "guest" user role represents the experience prior to logging-in
--   to an app and typically does not have a corresponding database table.
