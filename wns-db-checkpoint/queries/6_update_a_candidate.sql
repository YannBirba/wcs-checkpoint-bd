# Modifier le numéro de téléphone et le texte de présentation d'un candidat,

SELECT * FROM Candidat WHERE id = 1;

UPDATE Candidat
SET presentation = "Présentation mise à jour", telephone = "0678451258"
WHERE Candidat.id = 1;

SELECT * FROM Candidat WHERE id = 1;