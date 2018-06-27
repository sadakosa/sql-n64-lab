DROP TABLE IF EXISTS games;

CREATE TABLE Games (
  id SERIAL PRIMARY KEY,
  title VARCHAR (50) NOT NULL,
  year INTEGER NOT NULL,
  developers VARCHAR (50),
  genre VARCHAR (50)
);

INSERT INTO Games(title, year, developers, genre) VALUES('The Legend of Zelda: The Ocarina of Time', 1998, 'Nintendo EAD', 'Action-Adventure');
INSERT INTO Games(title, year, developers, genre) VALUES('Super Smash Bros.', 1999, 'Hal Laboratory', 'Fighting');
INSERT INTO Games(title, year, developers, genre) VALUES('Super Mario 64', 1996, 'Nintendo EAD', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Golden Eye 007', 1997, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Kart 64', 1996, 'Nintendo EAD', 'Racing');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Fox 64', 1997, 'Nintendo EAD', 'Rail/Scrolling Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Perfect Dark', 2000, 'Rare', 'First-Person Shooter');
INSERT INTO Games(title, year, developers, genre) VALUES('Star Wars: Shadow of the Empire', 1996, 'Lucas Arts', 'Action');
INSERT INTO Games(title, year, developers, genre) VALUES('Banjo-Kazooie', 1998, 'Rare', 'Platforming');
INSERT INTO Games(title, year, developers, genre) VALUES('Mario Party', 1998, 'Hudson Soft', 'Party Game');
INSERT INTO Games(title, year, developers, genre) VALUES('Tony Hawk''s Pro Skater' , 1996, 'Neversoft', 'Extreme Sports');



-- -- 1. Select the title of all games
-- SELECT title FROM Games;

-- -- 2. Show all the years in the database.
-- SELECT year FROM Games;

-- -- 3. Show the title of each game made by 'Rare'.
-- SELECT title FROM Games WHERE developers = 'Rare';

-- -- 4. Select all games that were made before 1998.
-- SELECT * FROM Games WHERE year < 1989;

-- -- 5. Find the average release year of all games.
-- SELECT AVG(year) FROM Games;

-- -- 6. Show the developer names of each game, in alphabetical order.
-- SELECT developers FROM Games ORDER BY developers ASC;

-- -- 7. Show the titles of games not made by 'Nintendo EAD'.
-- SELECT title FROM Games WHERE developers != 'Nintendo EAD';

-- -- 8. Add the the game 'F-Zero X', released in 1998, made by 'Nintendo EAD', and with the genre 'Racing'.
-- INSERT INTO Games(title, year, developers, genre) VALUES('F-Zero X', 1998, 'Nintendo EAD', 'Racing');

-- -- 9. Show all the game titles in descending order of their release year.
-- SELECT title FROM Games ORDER BY year DESC;

-- -- 10. Remove all games not made by 'Hudson Soft'.
-- DELETE FROM Games WHERE developers !=  'Hudson Soft';

-- -- 11. Show the average release year for games that were made by Rare or have the title `Tony Hawk''s Pro Skater`
-- SELECT AVG(year) FROM Games WHERE developers = 'Rare' OR title = `Tony Hawk''s Pro Skater`;

-- -- 12. Show the id and title and genre of all games that were either:

-- --  - Made before 1997,
-- SELECT id, title, genre FROM Games WHERE year < 1997;

-- --  - Made by Hal Laboratory,
-- SELECT id, title, genre FROM Games WHERE developers = 'Hal Laboratory';

-- --  - Or, have the genre Platforming AND are made by Rare.
-- SELECT id, title, genre FROM Games WHERE genre = 'Platforming' AND developers = 'Rare';