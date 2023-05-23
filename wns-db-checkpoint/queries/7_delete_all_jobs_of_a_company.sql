# Supprimer toutes les offres d'une entreprise. 

SELECT * FROM Offre WHERE id_entreprise = 1;

DELETE FROM Offre WHERE id_entreprise = 1;

SELECT * FROM Offre WHERE id_entreprise = 1;