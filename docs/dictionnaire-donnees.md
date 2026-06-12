# Dictionnaire de données

## UTILISATEUR

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_utilisateur | Identifiant unique de l'utilisateur | Oui | Généré automatiquement (UUID) |
| pseudo | Nom affiché sur l'application | Oui | Unique, 3 à 50 caractères |
| email | Adresse email de connexion | Oui | Unique, format valide |
| mot_de_passe | Mot de passe haché | Oui | Stocké sous forme de hash (bcrypt) |
| date_inscription | Date de création du compte | Oui | Générée automatiquement à l'inscription |
| date_naissance | Date de naissance de l'utilisateur | Non | L'utilisateur doit être majeur (≥ 18 ans) |
| role | Rôle dans l'application | Oui | Valeur parmi : membre, admin — défaut : membre |

---

## BRASSERIE

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_brasserie | Identifiant unique de la brasserie | Oui | Généré automatiquement |
| nom | Nom commercial de la brasserie | Oui | Unique, non vide |
| pays | Pays d'origine de la brasserie | Oui | — |
| region | Région ou ville d'implantation | Non | — |
| description | Présentation de la brasserie | Non | — |
| site_web | URL du site officiel | Non | Format URL valide |
| annee_creation | Année de fondation de la brasserie | Non | Année ≤ année courante |

---

## BIÈRE

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_biere | Identifiant unique de la bière | Oui | Généré automatiquement |
| nom | Nom commercial de la bière | Oui | Non vide |
| id_brasserie | Référence à la brasserie productrice | Oui | Clé étrangère vers BRASSERIE |
| id_style | Référence au style de la bière | Oui | Clé étrangère vers STYLE |
| degre_alcool | Teneur en alcool (% vol.) | Oui | Décimal ≥ 0 |
| ibu | Indice d'amertume (IBU) | Non | Entier ≥ 0 |
| ebc | Couleur de la bière (EBC) | Non | Entier ≥ 0 |
| description | Présentation et profil aromatique | Non | — |
| image_url | Photo de la bière ou de la bouteille | Non | Format URL valide |

---

## STYLE

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_style | Identifiant unique du style | Oui | Généré automatiquement |
| nom | Nom du style (IPA, Stout, Lager...) | Oui | Unique, non vide |
| description | Caractéristiques générales du style | Non | — |

---

## INGRÉDIENT

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_ingredient | Identifiant unique de l'ingrédient | Oui | Généré automatiquement |
| nom | Nom de l'ingrédient | Oui | Unique, non vide |
| type | Catégorie de l'ingrédient | Oui | Valeur parmi : houblon, malt, levure, eau, autre |

---

## AVIS

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_avis | Identifiant unique de l'avis | Oui | Généré automatiquement |
| id_utilisateur | Auteur de l'avis | Oui | Clé étrangère vers UTILISATEUR |
| id_biere | Bière concernée par l'avis | Oui | Clé étrangère vers BIÈRE |
| note | Note globale attribuée à la bière | Oui | Entier compris entre 1 et 5 |
| commentaire | Texte libre décrivant l'expérience | Non | — |
| date_publication | Date et heure de publication | Oui | Générée automatiquement |
| date_modification | Date de dernière modification | Non | Mise à jour lors d'une modification |

---

## BIERE_INGREDIENT

Table de liaison représentant la composition d'une bière.

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_biere | Référence à la bière | Oui | Clé étrangère vers BIÈRE |
| id_ingredient | Référence à l'ingrédient | Oui | Clé étrangère vers INGRÉDIENT |
| quantite | Quantité utilisée dans la recette | Non | — |

---

## FAVORI

Table de liaison représentant les bières sauvegardées par un utilisateur.

| Attribut | Description | Obligatoire | Règle métier |
|---|---|---|---|
| id_utilisateur | Référence à l'utilisateur | Oui | Clé étrangère vers UTILISATEUR |
| id_biere | Référence à la bière | Oui | Clé étrangère vers BIÈRE |
| date_ajout | Date d'ajout aux favoris | Oui | Générée automatiquement |

---

## Relations

| Entité 1 | Relation | Entité 2 | Cardinalité |
|---|---|---|---|
| UTILISATEUR | rédige | AVIS | 1,N |
| BIÈRE | reçoit | AVIS | 1,N |
| BRASSERIE | produit | BIÈRE | 1,N |
| STYLE | caractérise | BIÈRE | 1,N |
| BIÈRE | contient | INGRÉDIENT | N,N — via BIERE_INGREDIENT |
| UTILISATEUR | sauvegarde | BIÈRE | N,N — via FAVORI |
