-- //In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- As always, commit your changes after each step and push them out to GitHub
--
-- Create a file called update_exercises.sql.
--
-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson
-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
--



USE codeup_test_db;

select 'Name of Albums by pink floyd' AS 'SELECT';
select * from albums where artist='Pink Floyd';

select 'Year of Sgt.Pepper``s Lonely Heart club Band' AS 'SELECT';
select release_year from albums where name ='Sgt.Pepper``s Lonely Heart club Band';
--  select * from albums where release_date= BETWEEN 1990 AND 1999;

-- select 'Genre of Nevermind';
select genre from albums where name='Nevermind';
select * from albums where sales<20;



