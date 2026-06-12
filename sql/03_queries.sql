SELECT nom, degre_alcool
FROM biere
ORDER BY degre_alcool ASC;

SELECT s.nom, COUNT(b.id_biere) AS nb_bieres
FROM style s
LEFT JOIN biere b ON b.id_style = s.id_style
GROUP BY s.nom;

SELECT b.nom, b.degre_alcool, b.description
FROM biere b
JOIN brasserie br ON br.id_brasserie = b.id_brasserie
WHERE br.nom = 'BrewDog';

SELECT u.pseudo, COUNT(f.id_biere) AS nb_favoris
FROM utilisateur u
LEFT JOIN favori f ON f.id_utilisateur = u.id_utilisateur
GROUP BY u.pseudo;

INSERT INTO biere (nom, id_brasserie, id_style, degre_alcool, ibu, ebc, description, image_url)
VALUES ('Nouvelle Bière', 1, 2, 5.5, 30, 20, 'Description.', 'https://example.com/image.jpg');

SELECT b.nom, br.nom AS brasserie, br.pays
FROM biere b
JOIN brasserie br ON br.id_brasserie = b.id_brasserie
ORDER BY br.pays ASC;

SELECT b.nom, i.nom AS ingredient, bi.quantite
FROM biere b
JOIN biere_ingredient bi ON bi.id_biere = b.id_biere
JOIN ingredient i ON i.id_ingredient = bi.id_ingredient;

SELECT br.nom, COUNT(b.id_biere) AS nb_bieres
FROM brasserie br
JOIN biere b ON b.id_brasserie = br.id_brasserie
GROUP BY br.nom
HAVING COUNT(b.id_biere) > 5;

SELECT b.nom
FROM biere b
WHERE b.id_biere NOT IN (
    SELECT DISTINCT id_biere FROM favori
);

SELECT b.nom
FROM favori f1
JOIN favori f2 ON f2.id_biere = f1.id_biere
JOIN biere b ON b.id_biere = f1.id_biere
JOIN utilisateur u1 ON u1.id_utilisateur = f1.id_utilisateur
JOIN utilisateur u2 ON u2.id_utilisateur = f2.id_utilisateur
WHERE u1.pseudo = 'bierologue'
  AND u2.pseudo = 'houblonator';

SELECT br.nom, ROUND(AVG(a.note), 2) AS moyenne_notes
FROM brasserie br
JOIN biere b ON b.id_brasserie = br.id_brasserie
JOIN avis a ON a.id_biere = b.id_biere
GROUP BY br.nom
HAVING AVG(a.note) > 4;

UPDATE brasserie
SET pays = 'France',
    site_web = 'https://nouveau-site.fr'
WHERE nom = 'BrewDog';

UPDATE biere
SET image_url = NULL
WHERE nom = 'Punk IPA';
