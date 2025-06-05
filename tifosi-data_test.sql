USE tifosi;


INSERT INTO `client` (`id_Client`, `nom`, `email`, `code_postal`) VALUES
(1, 'Alain Dasilva', 'Alain.Dasilva@client.fr', 31000),
(2, 'Carlos Martinez', 'Carlos.Martinez@client.fr', 47000),
(3, 'Claire Lepoint', 'Claire.Lepoint@client.fr', 33000),
(4, 'David Beckham', 'David.Beckham@client.fr', 75000),
(5, 'Élodie Davinci', 'Élodie.Davinci@client.fr', 66000),
(6, 'Frances Desmond', 'Frances.Desmond@client.fr', 31000),
(7, 'Gaby Leroy', 'Gaby.Leroy@client.fr', 33200),
(8, 'Hugo Decrypte', 'Hugo.Decrypte@client.fr', 47300),
(9, 'Karol Simon', 'Karol.Simon@client.fr', 47150);


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
(1, 'Menu Mozaccia', 11.9, 1),
(2, 'Menu Gorgonzollaccia', 12.8, 2),
(3, 'Menu Raclaccia', 10.8, 3),
(4, 'Menu Emmentalaccia', 11.9, 4),
(5, 'Menu Tradizione', 10.9, 5),
(6, 'Menu Hawaienne', 13.2, 6),
(7, 'Menu Américaine', 12.8, 7),
(8, 'Menu Paysanne', 14.8, 8);


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


INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');


INSERT INTO `achete` (`id_Client`, `id_focaccia`, `jour`) VALUES
(1, 7, '2024-04-03'),
(2, 5, '2024-04-04'),
(3, 2, '2024-04-05'),
(4, 6, '2024-04-07');


INSERT INTO `paye` (`id_Client`, `id_menu`, `jour`) VALUES
(5, 3, '2024-04-01'),
(6, 8, '2024-04-03'),
(7, 7, '2024-04-06'),
(8, 1, '2024-04-05'),
(9, 4, '2024-04-04');


INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
-- Ingrédients Mozaccia
(1, 1), (1, 3), (1, 5), (1, 7), (1, 9), (1, 13), (1, 16), (1, 18), (1, 20), (1, 25),
-- Ingrédient Gorgonzollaccia
(2, 1), (2, 5), (2, 7), (2, 9), (2, 11), (2, 16), (2, 18), (2, 20),
-- Ingrédients Raclaccia
(3, 1), (3, 5), (3, 7), (3, 9), (3, 18), (3, 20), (3, 22),
-- Ingrédients Emmentalaccia
(4, 6), (4, 7), (4, 9), (4, 10), (4, 15), (4, 18), (4, 20),
-- Ingrédients Tradizione
(5, 5), (5, 7), (5, 9), (5, 12), (5, 16), (5, 17), (5, 18), (5, 20), (5, 25),
-- Ingrédients Hawaienne
(6, 2), (6, 4), (6, 5), (6, 9), (6, 16), (6, 18), (6, 19), (6, 20), (6, 25),
-- Ingrédients Américaine
(7, 4), (7, 5), (7, 9), (7, 16), (7, 18), (7, 20), (7, 21), (7, 25),
-- Ingrédient Paysanne
(8, 1), (8, 3), (8, 6), (8, 7), (8, 8), (8, 9), (8, 13), (8, 14), (8, 16), (8, 18), (8, 20), (8, 21);


INSERT INTO `contient` (`id_menu`, `id_boisson`)
SELECT m.id_menu, b.id_boisson
FROM menu m
CROSS JOIN boisson b;