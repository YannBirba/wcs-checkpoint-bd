# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")
CREATE TABLE
    Recruteur(
        id INTEGER,
        login TEXT,
        mot_de_passe TEXT,
        PRIMARY KEY(id)
    );

CREATE TABLE
    Candidat(
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

CREATE TABLE
    Entreprise(
        id INTEGER,
        nom TEXT,
        description TEXT,
        id_recruteur INTEGER,
        PRIMARY KEY(id),
        UNIQUE(id_recruteur),
        FOREIGN KEY(id_recruteur) REFERENCES Recuteur(id)
    );

CREATE TABLE
    Offre(
        id INTEGER,
        titre TEXT,
        descriptif TEXT,
        ville TEXT,
        id_entreprise INTEGER NOT NULL,
        PRIMARY KEY(id),
        FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id)
    );

CREATE TABLE
    Candidat_Offre(
        id_candidat INTEGER,
        id_offre INTEGER,
        PRIMARY KEY(id_candidat, id_offre),
        FOREIGN KEY(id_candidat) REFERENCES Candidat(id),
        FOREIGN KEY(id_offre) REFERENCES Offre(id)
    );
