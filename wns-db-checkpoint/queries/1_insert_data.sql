# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"

INSERT INTO Recruteur (login, mot_de_passe) VALUES ("coucou", "mot de passe de ouf malade héhé");

INSERT INTO Entreprise (nom, description, id_recruteur) VALUES("WCS", "Ceci est une description", 1);

INSERT INTO Offre (titre, descriptif, ville, id_entreprise) VALUES("Dev", "Ceci est une offre de dev", "Paris", 1);

INSERT INTO Offre (titre, descriptif, ville, id_entreprise) VALUES("Technicien de surface", "Ceci est une offre de technicien de surface", "Saint-Etienne", 1);

INSERT INTO Candidat (login,mot_de_passe,nom,prénom,email,telephone,presentation) VALUES('login','mot de passe','Nom','Prénom','test@test.fr','0600000000','Ceci est une présentatioh trop bien');

INSERT INTO Candidat (login,mot_de_passe,nom,prénom,email,telephone,presentation) VALUES('login1','mot de passe1','Nom1','Prénom1','test1@test.fr','0600100000','Ceci est une présentatioh trop bien1');

INSERT INTO Candidat (login,mot_de_passe,nom,prénom,email,telephone,presentation) VALUES('login2','mot de passe2','Nom2','Prénom2','test2@test.fr','0600102000','Ceci est une présentatioh trop bien2');

INSERT INTO Candidat (login,mot_de_passe,nom,prénom,email,telephone,presentation) VALUES('login2','mot de passe2','Nom3','Prénom3','test3@test.fr','0600102000','Ceci est une présentatioh trop bien2');

INSERT INTO Candidat (login,mot_de_passe,nom,prénom,email,telephone,presentation) VALUES('login2','mot de passe2','Nom4','Prénom4','test3@test.fr','0600102r00','Ceci est une présentatioh trrere2');

INSERT INTO Candidat_Offre (id_candidat, id_offre) VALUES(1, 2);

INSERT INTO Candidat_Offre (id_candidat, id_offre) VALUES(3, 2);

INSERT INTO Candidat_Offre (id_candidat, id_offre) VALUES(2, 1);

INSERT INTO Candidat_Offre (id_candidat, id_offre) VALUES(4, 1);