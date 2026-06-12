# Règles de gestion

## Utilisateur

| Code | Règle |
|---|---|
| RG-U01 | Un utilisateur doit s'inscrire avec une adresse email unique et un mot de passe pour accéder à l'application. |
| RG-U02 | Un utilisateur doit être âgé d'au moins 18 ans pour créer un compte. |
| RG-U03 | Un utilisateur peut consulter les bières et les brasseries sans être connecté. |
| RG-U04 | Un utilisateur connecté peut rédiger un avis, ajouter des bières en favori et gérer son profil. |
| RG-U05 | Un utilisateur ne peut rédiger qu'un seul avis par bière ; il peut le modifier ou le supprimer. |
| RG-U06 | Un utilisateur peut ajouter une même bière en favori une seule fois. |
| RG-U07 | Un utilisateur de rôle administrateur peut ajouter, modifier et supprimer des bières, des brasseries et des ingrédients. |
| RG-U08 | La suppression d'un compte utilisateur entraîne la suppression de ses avis et de ses favoris. |

---

## Brasserie

| Code | Règle |
|---|---|
| RG-B01 | Une brasserie doit posséder un nom unique et un pays d'origine renseigné. |
| RG-B02 | Une brasserie peut produire une ou plusieurs bières. |
| RG-B03 | Une brasserie ne peut pas être supprimée si elle est associée à au moins une bière. |
| RG-B04 | L'année de création d'une brasserie, si renseignée, ne peut pas être postérieure à l'année en cours. |

---

## Bière

| Code | Règle |
|---|---|
| RG-BI01 | Une bière doit être rattachée à une brasserie et à un style. |
| RG-BI02 | Une bière doit avoir un degré d'alcool renseigné et supérieur ou égal à 0. |
| RG-BI03 | Une bière peut contenir zéro ou plusieurs ingrédients. |
| RG-BI04 | Une bière peut recevoir zéro ou plusieurs avis de la part des utilisateurs. |
| RG-BI05 | La note moyenne d'une bière est calculée dynamiquement à partir de l'ensemble de ses avis. |
| RG-BI06 | La suppression d'une bière entraîne la suppression de ses avis ainsi que de ses liens avec les favoris et les ingrédients. |

---

## Style

| Code | Règle |
|---|---|
| RG-ST01 | Un style doit avoir un nom unique. |
| RG-ST02 | Un style peut être associé à zéro ou plusieurs bières. |
| RG-ST03 | Un style ne peut pas être supprimé s'il est utilisé par au moins une bière. |

---

## Ingrédient

| Code | Règle |
|---|---|
| RG-IN01 | Un ingrédient doit avoir un nom unique et appartenir à l'un des types suivants : houblon, malt, levure, eau ou autre. |
| RG-IN02 | Un ingrédient peut être utilisé dans zéro ou plusieurs bières. |
| RG-IN03 | Un même ingrédient ne peut apparaître qu'une seule fois dans la composition d'une même bière. |

---

## Avis

| Code | Règle |
|---|---|
| RG-AV01 | Un avis doit comporter une note obligatoire comprise entre 1 et 5. |
| RG-AV02 | Un avis concerne exactement un utilisateur et exactement une bière. |
| RG-AV03 | Un avis peut contenir un commentaire textuel facultatif. |
| RG-AV04 | Un avis peut être modifié par son auteur ; la date de modification est alors mise à jour automatiquement. |
| RG-AV05 | Un avis peut être supprimé par son auteur ou par un administrateur. |

---

## Favori

| Code | Règle |
|---|---|
| RG-FA01 | Un favori associe un utilisateur à une bière ; la combinaison (utilisateur, bière) doit être unique. |
| RG-FA02 | Un utilisateur peut retirer une bière de ses favoris à tout moment. |
