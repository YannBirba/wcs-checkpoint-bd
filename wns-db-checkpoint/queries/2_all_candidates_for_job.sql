# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT Candidat.* FROM Candidat
JOIN Candidat_Offre ON id_candidat = Candidat.id
JOIN Offre ON Offre.id = Candidat_Offre.id_offre
WHERE Offre.titre = "Dev";