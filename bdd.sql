CREATE TABLE Recuteur(
   id INTEGER,
   login TEXT,
   mot_de_passe TEXT,
   PRIMARY KEY(id)
);

CREATE TABLE Candidat(
   id INTEGER,
   login TEXT,
   mot_de_passe TEXT,
   nom TEXT,
   prénom TEXT,
   email TEXT,
   telephone TEXT,
   presentation TEXT,
   PRIMARY KEY(id)
);

CREATE TABLE Entreprise(
   id INTEGER,
   nom TEXT,
   description TEXT,
   id_1 INTEGER,
   PRIMARY KEY(id),
   UNIQUE(id_1),
   FOREIGN KEY(id_1) REFERENCES Recuteur(id)
);

CREATE TABLE Offre(
   id INTEGER,
   titre TEXT,
   descriptif TEXT,
   ville TEXT,
   id_1 INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES Entreprise(id)
);

CREATE TABLE Candidat_Offre(
   id INTEGER,
   id_1 INTEGER,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Candidat(id),
   FOREIGN KEY(id_1) REFERENCES Offre(id)
);
