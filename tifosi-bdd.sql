CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;




CREATE TABLE IF NOT EXISTS Client (
  id_client INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  email VARCHAR(150) NOT NULL,
  code_postal INT NOT NULL
);

CREATE TABLE IF NOT EXISTS foccacia (
  id_foccacia INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  prix FLOAT NOT NULL
);


CREATE TABLE IF NOT EXISTS ingredient (
  id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS marque (
  id_marque INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS menu (
  id_menu INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  prix FLOAT NOT NULL,
  id_foccacia INT NOT NULL,
  FOREIGN KEY (id_foccacia) REFERENCES foccacia (id_foccacia)
);

CREATE TABLE IF NOT EXISTS boisson (
  id_boisson INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(50) NOT NULL,
  id_marque INT NOT NULL
);

CREATE TABLE IF NOT EXISTS achete (
  id_client INT NOT NULL,
  id_menu INT NOT NULL,
  jour DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_client, id_menu),
  FOREIGN KEY (id_client) REFERENCES Client (id_client),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu)
);


CREATE TABLE IF NOT EXISTS comprend (
  id_foccacia INT NOT NULL,
  id_ingredient INT NOT NULL,
  quantite INT NOT NULL,
  PRIMARY KEY (id_foccacia, id_ingredient),
  FOREIGN KEY (id_foccacia) REFERENCES foccacia (id_foccacia),
  FOREIGN KEY (id_ingredient) REFERENCES ingredient (id_ingredient)
);


CREATE TABLE IF NOT EXISTS contient (
  id_menu INT NOT NULL,
  id_boisson INT NOT NULL,
  PRIMARY KEY (id_menu, id_boisson),
  FOREIGN KEY (id_boisson) REFERENCES boisson (id_boisson),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu)
);


CREATE TABLE IF NOT EXISTS appartient (
  id_marque INT NOT NULL,
  id_boisson INT NOT NULL,
  PRIMARY KEY (id_marque, id_boisson),
  FOREIGN KEY (id_marque) REFERENCES marque (id_marque),
  FOREIGN KEY (id_boisson) REFERENCES boisson (id_boisson)
);


CREATE TABLE IF NOT EXISTS estconstitué (
  id_menu INT NOT NULL,
  id_foccacia INT NOT NULL,
  PRIMARY KEY (id_menu, id_foccacia),
  FOREIGN KEY (id_foccacia) REFERENCES foccacia (id_foccacia),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu)
);