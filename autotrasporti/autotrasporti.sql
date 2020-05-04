-- Codifica SQL tramite SQLite3 per Kali Linux:




.header on
.mode column




DROP TABLE IF EXISTS Autisti;
CREATE TABLE Autisti
(
    ID_Autista INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Cognome TEXT NOT NULL,
    Data_nascita DATE NOT NULL,
    CF TEXT UNIQUE,
    Data_assunzione DATE,
    TEL TEXT UNIQUE,
    Tipo_patente TEXT NOT NULL,
    Num_patente TEXT NOT NULL,
    Scad_patente DATE NOT NULL
);

DROP TABLE IF EXISTS Automezzi;
CREATE TABLE Automezzi
(
    ID_Automezzo INTEGER PRIMARY KEY,
    Targa TEXT NOT NULL UNIQUE,
    Tipo_automezzo TEXT NOT NULL,
    Costo_chilometrico REAL NOT NULL,
    Peso_max REAL NOT NULL,
    Num_pax INTEGER NOT NULL,
    Tipo_patente TEXT NOT NULL,
    Data_revisione DATE NOT NULL
);

DROP TABLE IF EXISTS Clienti;
CREATE TABLE Clienti
(
    ID_Cliente INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Cognome TEXT NOT NULL,
    Data_nascita DATE NOT NULL,
    CF TEXT UNIQUE,
    TEL TEXT UNIQUE
);

DROP TABLE IF EXISTS Trasporti;
CREATE TABLE Trasporti
(
    ID_Trasporto INTEGER PRIMARY KEY,
    Data_trasporto DATE NOT NULL,
    Partenza TEXT NOT NULL,
    Arrivo TEXT NOT NULL,
    Peso REAL NOT NULL,
    Num_pax INTEGER NOT NULL,
    Chilometri REAL,
    Costo REAL,
    id_autista INTEGER NOT NULL,
    id_automezzo INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY(id_autista) REFERENCES Autisti(ID_Autista),
    FOREIGN KEY(id_automezzo) REFERENCES Automezzi(ID_Automezzo),
    FOREIGN KEY(id_cliente) REFERENCES Clienti(ID_Cliente)
);


INSERT INTO Autisti(Nome,Cognome,Data_nascita,CF,Data_assunzione,TEL,Tipo_patente,Num_patente,Scad_patente) VALUES("Tal","Dei Tali",DATE("1982-03-12"),"TLDTLI83T28F284G5",DATE("2018-09-15"),"3138255855","CQC Persone","18f26tt166",DATE("2020-05-21"));

INSERT INTO Automezzi(Targa,Tipo_automezzo,Costo_chilometrico,Peso_max,Num_pax,Tipo_patente,Data_revisione) VALUES("BP595XE","Autobus GT","7","20000","55","DE",date("2019-12-11"));

INSERT INTO Clienti(Nome,Cognome,Data_nascita,CF,TEL) VALUES("Giuseppe Francesco Fortunino","Verdi",DATE("1813-10-13"),"VRDGPPFF13F261V6","3337896541");

INSERT INTO Trasporti(Data_trasporto,Partenza,Arrivo,Peso,Num_pax,Chilometri,Costo,id_autista,id_automezzo,id_cliente) VALUES(DATE("2020-01-20"),"Oristano (OR)","Bosa MArina (OR)","12000","48","63","441","1","1","1");


SELECT Trasporti.ID_Trasporto,Trasporti.Data_trasporto FROM Trasporti WHERE Trasporti.Partenza="Oristano (OR)";

SELECT Trasporti.ID_Trasporto,Clienti.ID_Cliente,Autisti.ID_Autista FROM Clienti INNER JOIN Trasporti ON Trasporti.id_cliente=Clienti.ID_Cliente INNER JOIN Autisti ON Trasporti.id_autista=Autisti.ID_Autista WHERE Trasporti.Data_trasporto BETWEEN "2019-12-01" AND "2020-02-29"; -- Questa query poteva essere risolta con OUTER JOIN al posto di INNER JOIN, ma OUTER JOIN non é supportato da questo DBMS.

SELECT Autisti.ID_Autista,COUNT(*) AS Trasporti_Effettuati FROM Autisti INNER JOIN Trasporti ON Trasporti.id_autista=Autisti.ID_Autista GROUP BY Autisti.ID_Autista HAVING COUNT(*)>2;

SELECT Clienti.ID_Cliente,SUM(Trasporti.Peso) FROM Clienti INNER JOIN Trasporti ON Clienti.ID_Cliente=Trasporti.id_cliente GROUP BY Clienti.ID_Cliente;

SELECT SUM(Trasporti.Peso) AS Peso_Trasporto FROM Trasporti INNER JOIN Clienti ON Trasporti.id_cliente=Clienti.ID_Cliente WHERE CLienti.ID_Cliente="1";

SELECT Automezzi.ID_Automezzo FROM Automezzi INNER JOIN Trasporti ON Automezzi.ID_Automezzo=Trasporti.id_automezzo LIMIT 1; -- Poteva essere risolta con SELECT TOP 1, ma non é previsto questo comando in SQLITE3.