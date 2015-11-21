CREATE TABLE movies(
	imdb_id TEXT PRIMARY KEY,
	title TEXT,
	year INTEGER,
	rating TEXT,
	released TEXT,
	runtime TEXT,
	genre TEXT,
	plot TEXT,
	language TEXT,
	country TEXT,
	awards TEXT,
	poster TEXT,
	metascore REAL
);

CREATE TABLE actors(
	row_id INTEGER PRIMARY KEY,
	imdb_id TEXT,
	name TEXT
);

CREATE TABLE directors(
	row_id INTEGER PRIMARY KEY,
	imdb_id TEXT,
	name TEXT
);

CREATE TABLE preprocessed_movies(
	imdb_id TEXT PRIMARY KEY,
	word_list TEXT
);

--{"Title":"Batman","Year":"1989","Rated":"PG-13","Released":"23 Jun 1989","Runtime":"126 min","Genre":"Action, Adventure","Director":"Tim Burton","Writer":"Bob Kane (Batman characters), Sam Hamm (story), Sam Hamm (screenplay), Warren Skaaren (screenplay)","Actors":"Michael Keaton, Jack Nicholson, Kim Basinger, Robert Wuhl","Plot":"Gotham City: dark, dangerous, 'protected' only by a mostly corrupt police department. Despite the best efforts of D.A. Harvey Dent and police commissioner Jim Gordon, the city becomes increasingly unsafe...until a Dark Knight arises. We all know criminals are a superstitious, cowardly lot...so his disguise must be able to strike terror into their hearts. He becomes a bat. Enter Vicky Vale, a prize-winning photo journalist who wants to uncover the secret of the mysterious \"bat-man\". And enter Jack Napier, one-time enforcer for Boss Grissom, horribly disfigured after a firefight in a chemical factory...who, devoid of the last vestiges of sanity, seizes control of Gotham's underworld as the psychotic, unpredictable Clown Prince of Crime...the Joker. Gotham's only hope, it seems, lies in this dark, brooding vigilante. And just how does billionaire playboy Bruce Wayne fit into all of this?","Language":"English, French","Country":"USA, UK","Awards":"Won 1 Oscar. Another 9 wins & 21 nominations.","Poster":"http://ia.media-imdb.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2._V1_SX300.jpg","Metascore":"66","imdbRating":"7.6","imdbVotes":"250,186","imdbID":"tt0096895","Type":"movie","Response":"True"}