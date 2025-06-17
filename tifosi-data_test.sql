USE tifosi;


INSERT INTO `Client` (`id_client`, `nom`, `email`, `code_postal`) VALUES
(1, 'Alain Dasilva', 'Alain.Dasilva@Client.fr', 31000),
(2, 'Carlos Martinez', 'Carlos.Martinez@Client.fr', 47000),
(3, 'Claire Lepoint', 'Claire.Lepoint@Client.fr', 33000),
(4, 'David Beckham', 'David.Beckham@Client.fr', 75000),
(5, 'Élodie Davinci', 'Élodie.Davinci@Client.fr', 66000),
(6, 'Frances Desmond', 'Frances.Desmond@Client.fr', 31000),
(7, 'Gaby Leroy', 'Gaby.Leroy@Client.fr', 33200),
(8, 'Hugo Decrypte', 'Hugo.Decrypte@Client.fr', 47300),
(9, 'Karol Simon', 'Karol.Simon@Client.fr', 47150);


INSERT INTO `foccacia` (`id_foccacia`, `nom`, `prix`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);


INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmeasan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozarella');


INSERT INTO `menu` (`id_menu`, `nom`, `prix`, `id_foccacia`) VALUES
(1, 'Menu Mozaccia', 9.8, 1),
(2, 'Menu Gorgonzollaccia', 10.8, 2),
(3, 'Menu Raclaccia', 8.9, 3),
(4, 'Menu Emmentalaccia', 9.8, 4),
(5, 'Menu Tradizione', 8.9, 5),
(6, 'Menu Hawaienne', 11.2, 6),
(7, 'Menu Américaine', 10.8, 7),
(8, 'Menu Paysanne', 12.8, 8);


INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');


INSERT INTO `boisson` (`id_boisson`, `nom`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);


INSERT INTO `achete` (`id_client`, `id_menu`, `jour`) VALUES
(1, 7, '2025-04-03'),
(2, 5, '2025-04-04'),
(3, 2, '2025-04-05'),
(4, 6, '2025-04-07');


INSERT INTO `comprend` (`id_foccacia`, `id_ingredient`, `quantite`) VALUES
-- Ingrédients Mozaccia
(1, 1, 2), (1, 3, 20), (1, 5, 200), (1, 7, 40), (1, 9, 20), (1, 13, 80), (1, 16, 20), (1, 18, 50), (1, 20, 1), (1, 25, 50),
-- Ingrédient Gorgonzollaccia
(2, 1, 2), (2, 5, 200), (2, 7, 40), (2, 9, 20), (2, 11, 50), (2, 16, 20), (2, 18, 50), (2, 20, 1),
-- Ingrédients Raclaccia
(3, 1, 2), (3, 5, 200), (3, 7, 40), (3, 9, 20), (3, 18, 50), (3, 20, 1), (3, 22, 50),
-- Ingrédients Emmentalaccia
(4, 6, 200), (4, 7, 40), (4, 9, 20), (4, 10, 50), (4, 15, 20), (4, 18, 50), (4, 20, 1),
-- Ingrédients Tradizione
(5, 5, 200), (5, 7, 40), (5, 9, 20), (5, 12, 80), (5, 16, 20), (5, 17, 20), (5, 18, 50), (5, 20, 1), (5, 25, 50),
-- Ingrédients Hawaienne
(6, 2, 40), (6, 4, 80), (6, 5, 200), (6, 9, 20), (6, 16, 20), (6, 18, 50), (6, 19, 2), (6, 20, 1), (6, 25, 50),
-- Ingrédients Américaine
(7, 4, 80), (7, 5, 200), (7, 9, 20), (7, 16, 20), (7, 18, 50), (7, 20, 1), (7, 21, 80), (7, 25, 50),
-- Ingrédient Paysanne
(8, 1, 2), (8, 3, 20), (8, 6, 200), (8, 7, 40), (8, 8, 50), (8, 9, 20), (8, 13, 80), (8, 14, 50), (8, 16, 20), (8, 18, 50), (8, 20, 1), (8, 21, 80);


INSERT INTO `contient` (`id_menu`, `id_boisson`)
SELECT m.id_menu, b.id_boisson
FROM menu m
CROSS JOIN boisson b;

INSERT INTO `estconstitué` (`id_menu`, `id_foccacia`)
SELECT m.id_menu, f.id_foccacia
FROM menu m
CROSS JOIN foccacia f;

INSERT INTO `appartient` (`id_boisson`, `id_marque`)
SELECT m.id_marque, b.id_boisson
FROM boisson b
CROSS JOIN marque m;