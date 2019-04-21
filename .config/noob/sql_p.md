# SQL

sudo apt-get install mysql-server mysql-client
mysql_install_db #script to initialize the database
mysql_secure_installation #secure your MySQL installation
mysql -h localhost -u root -pMOTDEPASS
cat ~/.mysql_history #history des requetes sql

> creation base de donnees et affectation des droits

SET NAMES 'utf8';
GRANT ALL PRIVILEGES ON basededonnee * TO 'USER'@'localhost' IDENTIFIED BY 'MOTDEPASS';

ls /var/lib/mysql/DATABASE #dossier de la base
mysql -h localhost -u USER -pMOTDEPASS --default-character-set=utf8
mysql -A -hIP -uUSER -p BASE -e "SHOW TABLES LIKE 'TABLE%';"

SELECT 'value';

> creation base de donnees

CREATE DATABASE basededonnee CHARACTER SET 'utf8';
USE basededonnee
DROP DATABASE IF EXISTS basededonnee;

> creation table

CREATE TABLE table (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    colonne1 VARCHAR(40) NOT NULL,
    colonne2 CHAR(1),
    colonne3 DATETIME NOT NULL,
    colonne4 VARCHAR(30),
    colonne5 TEXT,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

> creation table avec clé étrangere

CREATE TABLE table1 (id1, colonne1, PRIMARY KEY (id1))ENGINE=INNODB;
CREATE TABLE table2 (id2, colonne2, id1 PRIMARY KEY (id1), INDEX (id1), FOREIGN KEY (id1) REFERENCES table1 (id1) ON UPDATE CASCADE ON DELETE CASCADE)ENGINE=INNODB;

> afficher table

SHOW TABLES;           -- liste les tables de la base de donnees
DESCRIBE table;  -     -- liste les colonnes et leurs caracteristiques
DROP TABLE table;
SELECT * FROM table;

> modification table

ALTER TABLE nom_table ADD ...              -- permet d ajouter
ALTER TABLE nom_table DROP ...             -- permet de retirer
ALTER TABLE nom_table CHANGE ...
ALTER TABLE nom_table MODIFY ...           -- permettent de modifier une colonne
ALTER TABLE nom_table ADD COLUMN date_insertion DATE NOT NULL;
ALTER TABLE nom_table CHANGE ancien_nom nouveau_nom description_colonne;
ALTER TABLE nom_table CHANGE prenom nom VARCHAR(30) NOT NULL;                        -- Changement du type + changement du nom
ALTER TABLE nom_table CHANGE colonne colonne BIGINT NOT NULL;                        -- Changement du type sans renommer
ALTER TABLE nom_table MODIFY colonne BIGINT NOT NULL AUTO_INCREMENT;                 -- Ajout de l auto-incrementation
ALTER TABLE nom_table MODIFY nom VARCHAR(30) NOT NULL DEFAULT 'commentaires';        -- Changement de la description

> insertion nouvelle ligne

INSERT INTO table VALUES (1, 'valeur2', 'valeur3', 'date', 'valeur5', 'valeur6');
INSERT INTO table VALUES (NULL, 'valeur2', 'valeur3', 'date', 'valeur5', NULL);
INSERT INTO table (id, colonne2, colonnedate, colonne4);
VALUES ('valeur1', 'valeur2', 'date', 'valeur4'),
       ('valeur1', NULL, '2010-08-23 05:18:00', NULL);

SOURCE \chemin\fichier.sql;
    INSERT INTO table (id, colonne2, colonnedate, colonne4)
VALUES ('valeur1', 'valeur2', 'date', 'valeur4'),
       ('valeur1', NULL, '2010-08-23 05:18:00', NULL)
    ...;

> affichage valeurs

SELECT * from table WHERE colonne1='valeur1';
SELECT * FROM table WHERE colonnedate < 'date';
SELECT * FROM table WHERE colonne1='valeur1' AND colonne2='valeur2';
SELECT * FROM table WHERE colonne3 = NULL;
SELECT * FROM table WHERE colonne3='valeur3' AND colonne4 IS NOT NULL ORDER BY colonne4 DESC;
SELECT * FROM table WHERE id BETWEEN 1 and 10;
SELECT * FROM table ORDER BY id LIMIT 6 OFFSET 0;
SELECT * FROM table WHERE colonne1 LIKE '%val%';           -- insensible à la casse
SELECT * FROM table WHERE colonne1 LIKE BINARY '%val%';    -- sensible à la casse
SELECT * FROM table WHERE colonne1 IN ('valeur', 'valeur', 'valeur', 'valeur', 'valeur', 'valeur', 'valeur');    --IN equivaut a une suite de OR

> comparaison de tables

SELECT * FROM TABLEA WHERE CHAMPA NOT IN( SELECT CHAMPB FROM TABLEB);

> jointure

SELECT t1.col1 , t2.col2 FROM table1 AS t1 JOIN table2 AS t2 on t1.COLID = t2.COLID;
select t1.col1, t1.col2, t3.col4 from table1 as t1 join table2 as t2 on t1.col1 = t2.col1 join table3 as t3 on t2.col2 = t3.col1;

mysqldump -u USER -p --opt NOM_DE_LA_BASE > SAUVEGARDE.sql
mysqldump -hIP -uUSER -p BASE TABLE1 T2 T3 > DUMP.sql
mysql NOM_BASE < CHEMIN/FICHIER_DE_SAUVEGARDE.sql

> ou

USE nom_base;
SOURCE fichier_de_sauvegarde.sql;

UPDATE table SET colonne1='valeur1', colonne2='valeur2' WHERE id=21;  --irreversible
DELETE FROM table WHERE colonne2 = 'valeur2';                         --supp ligne
UPDATE table SET colonne8='commentaires';

> reparation de bases SQL

ANALYZE TABLE myTable;
CHECK TABLE myTable;
SHOW PROCESSLIST;
KILL <id>;
REPAIR TABLE myTable;
OPTIMIZE TABLE myTable:

SHOW CREATE TABLE myTable;
ALTER TABLE myTable ENGINE = InnoDB;

mysqlcheck --repair --databases db_name ...
mysqlcheck --repair --all-databases
/usr/bin/mariadbcheck  -h localhost -u root -prdserdse --repair --all-databases

mysqldump --all-databases > dump.sql
mysql < dump.sql
