# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom

SELECT Candidat.* from Candidat
JOIN Entreprise ON Entreprise.nom = "WCS"
JOIN Candidat_Offre ON Candidat_Offre.id_candidat = Candidat.id
WHERE (SELECT COUNT(Offre.id) FROM Offre WHERE Offre.id_entreprise = Entreprise.id) > 0;