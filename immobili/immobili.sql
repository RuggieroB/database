-- Codifica SQL tramite SQLite3 per Kali Linux:




.header on
.mode column




DROP TABLE IF EXISTS Locatari;

CREATE TABLE Locatari
(
    ID_Locatario INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Cognome TEXT NOT NULL,
    Data_nascita DATE NOT NULL,
    CF TEXT NOT NULL UNIQUE,
    TEL TEXT NOT NULL
);


DROP TABLE IF EXISTS Immobili;

CREATE TABLE Immobili
(
    ID_Immobile INTEGER PRIMARY KEY,
    Indirizzo TEXT NOT NULL,
    Città TEXT NOT NULL,
    CAP TEXT NOT NULL,
    Provincia TEXT NOT NULL,
    Regione TEXT NOT NULL,
    Tipologia TEXT NOT NULL
);


DROP TABLE IF EXISTS Contratti;

CREATE TABLE Contratti
(
    ID_Contratto INTEGER PRIMARY KEY,
    Data_inizio DATE NOT NULL,
    Durata TEXT NOT NULL,
    Rata_affitto REAL NOT NULL,
    id_locatario INTEGER,
    FOREIGN KEY(id_locatario) REFERENCES Locatari(ID_Locatario),
    id_immobile INTEGER,
    FOREIGN KEY(id_immobile) REFERENCES Immobili(ID_Immobile)
);


DROP TABLE IF EXISTS Manutenzioni;

CREATE TABLE Manutenzioni
(
    ID_Manutenzione INTEGER PRIMARY KEY,
    Descrizione_intervento TEXT NOT NULL,
    Data_inizio DATE NOT NULL,
    Data_fine DATE NOT NULL,
    Costo REAL NOT NULL,
    id_contratto INTEGER,
    FOREIGN KEY(id_contratto) REFERENCES Contratti(ID_Contratto) 
);




INSERT INTO Locatari(Nome,cognome,Data_nascita,CF,TEL) VALUES("Pino","Amato",DATE("1930-10-27"),"MTAPNI30R27L219X","0117572376");

INSERT INTO Immobili(Indirizzo,Città,CAP,Provincia,Regione,Tipologia) VALUES("Via Tofane, 14","Belluno","32100","BL","Veneto","Appartamento");

INSERT INTO Contratti(Data_inizio,Durata,Rata_affitto,id_locatario,id_immobile) VALUES("2017-03-21","4","2150","1","1");

INSERT INTO Manutenzioni(Descrizione_intervento,Data_inizio,Data_fine,Costo,id_contratto) VALUES("Sostituzione infissi","2019-12-11","2019-12-13","4880","1");




SELECT Locatari.ID_Locatario FROM Locatari INNER JOIN Contratti ON Locatari.ID_Locatario=Contratti.id_locatario HAVING Contratti.Durata>2 GROUP BY Locatari.ID.Locatario ASC;