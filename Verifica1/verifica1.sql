.header on
.mode column

DROP TABLE IF EXISTS Proiezioni;
DROP TABLE IF EXISTS Sale;
DROP TABLE IF EXISTS Recita;
DROP TABLE IF EXISTS Film;
DROP TABLE IF EXISTS Attori;

CREATE TABLE Attori
(
    CodAttore INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    AnnoNascita DATE,
    Nazionalita TEXT
);

CREATE TABLE Film
(
    CodFilm INTEGER PRIMARY KEY,
    Titolo TEXT NOT NULL,
    AnnoProduzione DATE,
    Nazionalita TEXT,
    Regista TEXT NOT NULL,
    Genere TEXT NOT NULL,
    Durata INTEGER,
    NumeroAttori INTEGER
);

CREATE TABLE Recita
(
    CodRecita INTEGER PRIMARY KEY,
    codattore INTEGER,
    codfilm INTEGER,
    FOREIGN KEY(codattore) REFERENCES Attori(CodAttore),
    FOREIGN KEY(codfilm) REFERENCES Film(CodFilm)
);

-- CREATE TABLE Sale
-- (
--    CodSala INTEGER PRIMARY KEY,
--    Nome TEXT NOT NULL,
--    Citta TEXT NOT NULL,
--    Posti INTEGER
-- );
-- 
-- CREATE TABLE Proiezioni
-- (
--     CodProiezione INTEGER PRIMARY KEY,
--     codfilm INTEGER,
--     FOREIGN KEY(codfilm) REFERENCES Film(CodFilm),
--     codsala INTEGER,
--     FOREIGN KEY(codsala) REFERENCES Sale(CodSala),
--     DataProiezione DATE,
--     Incasso REAL 
-- );

INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Richard Gere",DATE("1949"),"USA");
INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Julia Roberts",DATE("1967"),"USA");
INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Robin Williams",DATE("1951"),"USA");
INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Marcello Mastroianni",DATE("1924"),"Italia");
INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Sophia Loren",DATE("1934"),"Italia");
INSERT INTO Attori(Nome,AnnoNascita,Nazionalita) VALUES("Gérard Depardieu",DATE("1948"),"Francia");
SELECT * FROM Attori;

-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Pretty Woman",DATE("1990"),"USA","Garry Marshall","Romantico","125","14");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Lo sceicco bianco",DATE("1952"),"Italia","Federico Fellini","Commedia","85","19");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Amarcord",DATE("1973"),"Italia","Federico Fellini","Commedia, drammatico","123","21");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("E.T, l'extra-terrestre",DATE("1982"),"USA","Steven Spielberg","Avventura, fantascienza","115","10");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Casablanca",DATE("1942"),"USA","Michael Curtiz","Drammatico, sentimentale","102","15");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("L'arca di Noè",DATE("1928"),"USA","Michael Curtiz","Drammatico, guerra","135","14");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Goodbye again",DATE("1933"),"USA","Michael Curtiz","Commedia, sentimentale","66","14");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Salvate il soldato Ryan",DATE("1998"),"USA","Steven Spielberg","Guerra, drammatico, azione, storico","169","15");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Mrs. Doubtfire - Mammo per sempre",DATE("1993"),"USA","Chris Columbus","Commedia, drammatico","120","14");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("C'eravamo tanto amati",DATE("1974"),"Italia","Ettore Scola","Commedia, drammatico","120","22");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Prêt-à-porter",DATE("1994"),"USA","Robert Altam","Commedia","133","43");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("La ciociara",DATE("1960"),"Italia","Vittorio de Sica","Drammatico, guerra","100","17");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Godzilla",DATE("1954"),"Giappone","Ishirō Honda","Fantascienza","98","18");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Stargate",DATE("1994"),"Francia","Roland Emmerich","Fantascienza","125","20");
-- INSERT INTO Film(Titolo,AnnoProduzione,Nazionalita,Regista,Genere,Durata,NumeroAttori) VALUES("Carmi amici miei...",DATE("1974"),"Francia","Pierre Tchernia","Commedia","94","15");
-- 
-- 
-- INSERT INTO Recita(codattore,codfilm) VALUES("1","1");
-- INSERT INTO Recita(codattore,codfilm) VALUES("2","1");
-- INSERT INTO Recita(codattore,codfilm) VALUES("2","12");
-- INSERT INTO Recita(codattore,codfilm) VALUES("3","9");
-- INSERT INTO Recita(codattore,codfilm) VALUES("4","10");
-- INSERT INTO Recita(codattore,codfilm) VALUES("5","10");
-- INSERT INTO Recita(codattore,codfilm) VALUES("5","11");
-- INSERT INTO Recita(codattore,codfilm) VALUES("6","14");
-- 
-- 
-- INSERT INTO Sale(Nome,Citta,Posti) VALUES("Arsenale","Pisa (PI)","110");
-- INSERT INTO Sale(Nome,Citta,Posti) VALUES("Lumiere","Pisa (PI)","280");
-- INSERT INTO Sale(Nome,Citta,Posti) VALUES("Ossau","Pisa (PI)","200");
-- INSERT INTO Sale(Nome,Citta,Posti) VALUES("Matropolitan","Napoli (NA)","300");
-- INSERT INTO Sale(Nome,Citta,Posti) VALUES("Arcobaleno","Napoli (NA)","195");
-- 
-- 
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("1","1",DATE("2018-12-21"),"340");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("5","2",DATE("2004-12-25"),"285");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("11","4",DATE("2004-12-25"),"185");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("9","5",DATE("2004-12-25"),"485");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("10","3",DATE("2005-01-11"),"290");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("13","4",DATE("2000-03-25"),"55");
-- INSERT INTO Proiezioni(codfilm,codsala,DataProiezione,Incasso) VALUES("14","1",DATE("2001-11-05"),"105");
-- 
-- SELECT Sale.CodSala,Sale.Nome From Sale WHERE Sale.Citta="Pisa" ORDER BY Sale.Nome ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film WHERE Film.Regista="Federico Fellini" AND (Film.AnnoProduzione > DATE("1960")) ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film WHERE (Film.Nazionalita="Giappone" OR Film.Nazionalita="Francia") AND (Film.AnnoProduzione > DATE("1990")) ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo,Film.Durata FROM Film WHERE (Film.Nazionalita="Giappone" OR Film.Nazionalita="Francia") AND (Film.AnnoProduzione > DATE("1990")) ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film WHERE Film.Regista="Michael Curtiz" ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo,Film.Genere FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE Proiezioni.DataProiezione=DATE("2004-12-25") ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo,Film.Genere FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm INNER JOIN Sale ON Proiezioni.codsala=Sale.CodSala WHERE (Sale.Città="Napoli" AND Proiezioni.DataProiezione=DATE("2004-12-25")) ORDER BY Film.CodFilm ASC;
-- SELECT Sale.CodSala,Sale.Nome,Film.CodFilm,Film.Titolo FROM Sale INNER JOIN Proiezioni ON Sale.CodSala=Proiezioni.codsala INNER JOIN Film ON Proiezioni.codfil=Film.CodFilm INNER JOIN Recita ON Film.CodFilm=Recita.codfilm INNER JOIN Attori ON Recita.codattore=Attori.CodAttore WHERE (Sale.Città="Napoli" AND Proiezioni.DataProiezione=DATE("2004-12-25") AND Attori.Nome="Robin Williams") ORDER BY Sale.CodSala ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film INNER JOIN Recita ON Film.CodFilm=Recita.codfilm INNER JOIN Attori ON Recita.codattore=Attori.CodAttore WHERE (Attori.Nome="Marcello Mastroianni" OR Attori.Nome="Sophia Loren") ORDER BY Film.CodFilm ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film INNER JOIN Recita ON Film.CodFilm=Recita.codfilm INNER JOIN Attori ON Recita.codattore=Attori.CodAttore WHERE (Attori.Nome="Marcello Mastroianni" AND Attori.Nome="Sophia Loren") ORDER BY Film.CodFilm ASC;
-- SELECT Attori.CodAttore,Attori.Nome,Film.CodFilm,Film.Titolo FROM Attori INNER JOIN Recita ON Attori.CodAttore=Recita.codattore INNER JOIN Film ON Recita.codfilm=Film.CodFilm WHERE Attori.Nazionalità="Francese" ORDER BY Attori.CodAttore ASC;
-- SELECT Film.CodFilm,Film.Titolo,Sale.CodSala,Sale.Nome FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm INNER JOIN Sale ON Proiezioni.codsala=Sale.CodSala WHERE (Sale.Città="Pisa" AND Proiezioni.DataProiezione=DATE("2015")) ORDER BY Sala.CodSala ASC;
-- SELECT COUNT(Sale) AS Totale_Sale FROM Sale WHERE Sale.Citta="Pisa" HAVING Sale.Posti > 60;
-- SELECT COUNT(Sale.Posti) AS Totale_Posti FROM Sale WHERE Sale.Citta="Pisa";
-- SELECT COUNT(Sale) AS Totale_Sale FROM Sale ORDER BY Sale.CodSala;
-- SELECT COUNT(Sale) AS Totale_Sale FROM Sale HAVING Sale.Posti > 60 Sale.CodSala;
-- SELECT COUNT(Film) AS Totale_Film FROM Film HAVING Film.AnnoProduzione > DATE("1990") GROUP BY Film.Regista;
-- SELECT SUM(Proiezioni.Incasso) AS Totale_Incasso From Proiezioni INNER JOIN Film ON Proiezioni.codfilm=Film.CodFilm GROUP BY Film.Regista;
-- SELECT Film.CodFilm,FIlm.Titolo,SUM(Proiezioni.Incasso) AS Totale_Incasso,COUNT(Proiezioni), AS Totale_Proiezioni FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm INNER JOIN Sale ON Proiezioni.codala=Sale.CodSala WHERE (Sale.Città="Pisa" AND Film.Regista="Steven Spielberg");
-- SELECT COUNT(Film) AS Totale_Film FROM Film INNER JOIN Recita ON Film.CodFilm=Recita.codfilm INNER JOIN Attori ON Recita.codattore=Attori.CodAttore GROUP BY (Attori.Nome AND Film.Regista);
-- SELECT Film.CodFilm,Film.Regista,Film.Titolo Having Film.NumeroAttori <= 6;
-- SELECT Film.CodFilm,Film.Titolo,Sum(Proiezioni.Incasso) FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE Film.AnnoProduzione > DATE("2000") ORDER BY Film.CodFilm ASC;
-- SELECT COUNT(Attori) AS Totale_Attori FROM Attori INNER JOIN Recita ON Attori.CodAttore=Recita.codattore INNER JOIN Film ON Recita.codfilm=Film.CodFilm HAVING Attori.DataNascita < DATE("1970");
-- SELECT Film.CodFilm,FIlm.Titolo,SUM(Proiezioni.Incasso) AS Totale_Incasso From Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm HAVING Film.Genere="Fantascienza";
-- SELECT Film.CodFilm,FIlm.Titolo,SUM(Proiezioni.Incasso) AS Totale_Incasso From Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE (Film.Genere="Fantascienza" AND Proiezioni.DataProiezione > DATE("2001-01-01");
-- SELECT Film.CodFilm,FIlm.Titolo,SUM(Proiezioni.Incasso) AS Totale_Incasso From Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE (Film.Genere="Fantascienza" AND Proiezioni.DataProiezione <> DATE("2001-01-01");
-- SELECT Sale.CodSAla,Sale.Nome,SUM(Proiezioni.Incasso) AS Totale_Incasso FROM Sale INNER JOIN Proiezioni ON Sale.CodSala=Proiezioni.codsala WHERE (Sale.CIttà="Pisa" AND Proiezioni.DataProiezione > DATE("2005") HAVING SUM(Proiezioni.Incasso) > 20000;
-- SELECT Film.CodFilm,FIlm.Titolo FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm INNER JOIN Sale ON Proiezioni.codsala=Sale.codsala WHERE Sala.Città <> "Pisa";
-- SELECT Film.CodFilm,FIlm.Titolo FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm INNER JOIN Sale ON Proiezioni.codsala=Sale.codsala WHERE Sala.Città = "Pisa";
-- SELECT Film.CodFilm,FIlm.Titolo FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE Proiezioni.Incasso < 500;
-- SELECT Film.CodFilm,FIlm.Titolo FROM Film INNER JOIN Proiezioni ON Film.CodFilm=Proiezioni.codfilm WHERE Proiezioni.Incasso > 500;
-- SELECT Attori.CodAttore,Attori.Nome FROM Attori INNER JOIN Recita ON Attori.CodAttore=Recita.codattore INNER JOIN Film ON Recita.codfilm=Film.CodFilm WHERE (Attori.Nazionalità="Italia" AND Film.Regista <> "Federico Fellini") ORDER BY Attori.CodAttore ASC;
-- SELECT Film.CodFilm,Film.Titolo FROM Film INNER JOIN Recita ON Film.CodFilm=Recita.codfilm INNER JOIN Film ON Recita.codfilm=Film.CodFilm WHERE (Film.Regista = "Federico Fellini" AND Attori.Nazionalità <> "Italia");
-- SELECT Film.CodFilm,Film.Titolo FROM Film HAVING Film.NumeroAttori= "0";
-- SELECT Attori.CodAttore,Attori.Nome FROM Attori INNER JOIN Recita ON Attori.CodAttore=Recita.codattore INNER JOIN Film ON Recita.codfilm=Film.CodFilm WHERE (Film.AnnoProduzione < 1960 AND Film.Regista = "Federico Fellini");
-- SELECT Attori.CodAttore,Attori.Nome FROM Attori INNER JOIN Recita ON Attori.CodAttore=Recita.codattore INNER JOIN Film ON Recita.codfilm=Film.CodFilm WHERE (Film.AnnoProduzione < 1960 AND Film.Regista <> "Federico Fellini");