
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;




CREATE TABLE IF NOT EXISTS client (
  id_Client INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  email INT NOT NULL,
  code_postal INT NOT NULL
);

CREATE TABLE IF NOT EXISTS foccacia (
  id_foccacia INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  prix FLOAT NOT NULL
);


CREATE TABLE IF NOT EXISTS ingredient (
  id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS menu (
  id_menu INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  prix FLOAT NOT NULL,
  id_foccacia INT NOT NULL,
  FOREIGN KEY (foccacia) REFERENCES foccacia (id_foccacia)
);

CREATE TABLE IF NOT EXISTS boisson (
  id_boisson INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL,
  id_marque INT NOT NULL,
  FOREIGN KEY (id_marque) REFERENCES marque (id_marque)
);


CREATE TABLE IF NOT EXISTS marque (
  id_marque INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(45) NOT NULL
);


CREATE TABLE IF NOT EXISTS achete (
  id_Client INT NOT NULL,
  id_foccacia INT NOT NULL,
  jour DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_Client, id_foccacia),
  FOREIGN KEY (id_Client) REFERENCES client (id_Client),
  FOREIGN KEY (id_foccacia) REFERENCES foccacia (id_foccacia)
);


CREATE TABLE IF NOT EXISTS comprend (
  id_foccacia INT NOT NULL,
  id_ingredient INT NOT NULL,
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


CREATE TABLE IF NOT EXISTS paye (
  id_Client INT NOT NULL,
  id_menu INT NOT NULL,
  jour DATE NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_Client, id_menu),
  FOREIGN KEY (id_Client) REFERENCES client (id_Client),
  FOREIGN KEY (id_menu) REFERENCES menu (id_menu)
);
