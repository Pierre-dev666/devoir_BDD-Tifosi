-- 1 Afficher la liste des nom des foccacias par ordre alphabétique
SELECT nom FROM foccacia ORDER BY nom ASC;
-- résultat attendu : Afficher la liste des nom des foccacias par ordre alphabétique
-- résultat obtenu : Affiche la liste des nom des foccacias par ordre alphabétique
-- pas d'écarts obtenus

-- 2 Afficher le nombre total d'ingrédients
SELECT COUNT(id_ingredient) FROM ingredient;
-- résultat attendu : Calculer et afficher le nombre total d'ingrédients
-- résultat obtenu : Calcule et affiche le nombre total d'ingrédients
-- pas d'écarts obtenus

-- 3 Afficher le prix moyen des foccacias
SELECT AVG(prix) FROM foccacia;
-- résultat attendu : Calculer et afficher le prix moyen des foccacias
-- résultat obtenu : Calcule et affiche le prix moyen des foccacias
-- pas d'écarts obtenus

-- 4 Afficher la liste des boissons avec leur marque, trié par nom de boisson
SELECT * FROM appartient INNER JOIN boisson ON appartient.id_boisson = boisson.id_boisson INNER JOIN marque 
ON appartient.id_marque = marque.id_marque ORDER BY `boisson`.`nom` ASC;
-- résultat attendu : Afficher seulement la liste des boissons avec leur marque, trié par nom de boisson
-- résultat obtenu : Affiche la liste des boissons avec leur marque, trié par nom de boisson ainsi les id 
-- Affiche davantage d'informations que demandé

-- 5 Afficher la liste des ingrédients pour une Raclaccia
SELECT * FROM comprend INNER JOIN ingredient 
ON comprend.id_ingredient = ingredient.id_ingredient INNER JOIN foccacia ON comprend.id_foccacia = foccacia.id_foccacia WHERE foccacia.nom = ('Raclaccia'); 
-- résultat attendu : Afficher seulement la liste des ingrédients pour une Raclaccia ainsi que la quantité
-- résultat obtenu : Affiche la liste des ingrédients et les ingrédients pour une Raclaccia ainsi que le prix de la foccacia et les id
-- Affiche davantage d'informations que demandé

-- 6 Afficher le nom et le nombre d'ingrédients pour chaque foccacia
SELECT * FROM foccacia INNER JOIN comprend ON comprend.id_foccacia = foccacia.id_foccacia INNER JOIN ingredient 
ON comprend.id_ingredient = ingredient.id_ingredient;
-- résultat attendu : Afficher seulement le nom et le nombre d'ingrédients pour chaque foccacia
-- résultat obtenu : Affiche le nom et le nombre d'ingrédients pour chaque foccacia ainsi que le prix, la quantité d'ingredient et les id
-- Affiche davantage d'informations que demandé

-- 7 Afficher le nom de la foccacia qui a le plus d'ingrédients
SELECT f.nom AS foccacia, COUNT(c.id_ingredient) AS nombre_ingredients FROM foccacia f JOIN comprend c ON f.id_foccacia = c.id_foccacia 
GROUP BY f.nom ORDER BY nombre_ingredients ASC;
-- résultat attendu : Afficher seulement le nom de la foccacia qui a le plus d'ingrédients
-- résultat obtenu : Affiche le nom de toute les foccacia ainsi que leur nombre d'ingrédients
-- Affiche davantage d'informations que demandé

-- 8 Afficher la liste des foccacia contenant de l'ail
SELECT * FROM foccacia INNER JOIN comprend ON comprend.id_foccacia = foccacia.id_foccacia INNER JOIN ingredient 
ON comprend.id_ingredient = ingredient.id_ingredient WHERE ingredient.nom = ('ail');
-- résultat attendu : Afficher seulement la liste des foccacia contenant de l'ail
-- résultat obtenu : Affiche la liste des foccacia contenant de l'ail ainsi que le nom ail, les quantités le prix des foccacia et les id
-- Affiche davantage d'informations que demandé

-- 9 Afficher la liste des ingrédients inutilisés
select nom from ingredient where id_ingredient not in (select id_ingredient from comprend);
-- résultat attendu : Afficher la liste des ingrédients inutilisés
-- résultat obtenu : Affiche bien la liste des ingrédients inutilisés
-- pas d'écarts obtenus

-- 10 Afficher la liste des foccacia qui n'ont pas de champignons
SELECT * FROM foccacia INNER JOIN comprend ON comprend.id_foccacia = foccacia.id_foccacia INNER JOIN ingredient 
ON comprend.id_ingredient = ingredient.id_ingredient WHERE ingredient.nom <> ('champignon'); 
-- résultat attendu : Afficher seulement la liste des foccacia qui n'ont pas de champignons
-- résultat obtenu : Affiche la liste des foccacia qui n'ont pas de champignons ainsi que les ingrédients, les quantités, les prix des foccacia et les id
-- Affiche davantage d'informations que demandé