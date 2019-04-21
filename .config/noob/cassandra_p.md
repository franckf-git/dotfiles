# Cassandra

wget http://www.apache.org/dyn/closer.lua/cassandra/3.0.15/apache-cassandra-3.0.15-bin.tar.gz
tar -xvzf apache-cassandra-3.0.15-bin.tar.gz apache-cassandra-3.0.15

./apache-cassandra-3.11.1/bin/cassandra
./apache-cassandra-3.11.1/bin/cqlsh localhost -u cassandra -p cassandra

ps auwx | grep cassandra
sudo kill pid
sudo rm -rf /var/lib/cassandra/data/data/system/*

- Install Cassandra on each node.
- Choose a name for the cluster.
- Get the IP address of each node.
- Determine which nodes will be seed nodes.
- Determine the snitch and replication strategy.

> cassandra.yaml :
- cluster_name : nom du cluster
- listen_address : adresse IP ou nom de machine du noeud
- seed_provider : adresse IP pour la découverte du réseau
- endpoint_snitch : SimpleSnitch est utilisé pour la configuration en datacenter unique
- authenticator authorizer et role_manager : gestion des autorisations d’accès à Cassandra
- commitlog_directory : placer dans une autre partition (ou disque physique !) que les fichiers de bases

>> creation base de donnees
CREATE KEYSPACE basededonnee WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };
USE basededonnee :
DROP DATABASE IF EXISTS basededonnee;

> Création des tables
>> p : clé de partition (primaire)
>> c : clé (colonne) de clustering
>> s : index secondaire

CREATE TABLE one_p_two_c ( one varchar, two int, three int, primary KEY ((one), two)) WITH CLUSTERING ORDER BY (two ASC);
CREATE TABLE one_p_two_p ( one varchar, two int, three int, primary KEY ((one, two))) ;
CREATE TABLE one_p_two_c_thr_c ( one varchar, two int, three int, primary KEY ((one), two, three)) WITH CLUSTERING ORDER BY (two ASC);
CREATE TABLE one_p_two_p_thr_c ( one varchar, two int, three int, primary KEY ((one, two), three)) WITH CLUSTERING ORDER BY (three ASC);
INSERT INTO table (one , two , three ) VALUES ( 'text', int, int);
INSERT INTO table (one , two , three ) VALUES ( 'text', int, int);

>> afficher table
SELECT * FROM table;
SELECT * FROM one_p_two_c_thr_c   WHERE one IN ( 'text','text') AND two IN (int,int) AND three = int ;
SELECT * FROM one_p_two_c  WHERE one IN ( 'text','text') AND two IN (int,int);

>> index secondaire
CREATE TABLE one_p_two_s ( one varchar, two int, three int, primary KEY (one)) ;
CREATE INDEX ON one_p_two_s (two) ;

ALTER KEYSPACE             -- Changes keyspace replication and enable/disable commit log.
ALTER MATERIALIZED VIEW    -- Changes the table properties of a materialized view.
ALTER ROLE                 -- Changes password, and set superuser or login options.
ALTER TABLE                -- Modifies the columns and properties of a table.
ALTER TYPE                 -- Modify a user-defined type.
ALTER USER                 -- Alter existing user options.
BATCH                      -- Applies multiple data modification with atomicity.
CONSISTENCY [level]        -- Determines nodes must respond (QUORUM, ALL, ONE, ANY).
CREATE AGGREGATE           -- Create user-defined aggregate.
CREATE INDEX               -- Define a new index on a single column of a table.
CREATE FUNCTION            -- Creates custom function that execute user provided code.
CREATE KEYSPACE            -- Define a new keyspace.
CREATE MATERIALIZED VIEW   -- Create a materialized view.
CREATE TABLE               -- Define a new table.
CREATE TRIGGER             -- Registers a trigger on a table.
CREATE TYPE                -- Create a customized collection, user-defined type (UDT).
CREATE ROLE                -- Create roles for access control to database objects.
DELETE                     -- Removes data from columns or removes the entire row.
DROP AGGREGATE             -- Drop a user-defined aggregate.
DROP FUNCTION              -- Drop user-defined function (UDF).
DROP INDEX                 -- Drop the named index.
DROP KEYSPACE              -- Remove the keyspace.
DROP MATERIALIZED VIEW     -- Remove the named materialized view.
DROP ROLE                  -- Removes a role.
DROP TABLE                 -- Remove the named table.
DROP TRIGGER               -- Removes registration of a trigger.
DROP TYPE                  -- Drop a user-defined type.
GRANT                      -- Defines resource authorization.
INSERT                     -- Inserts an entire row or upserts data into existing rows.
LIST PERMISSIONS           -- Lists role permissions on resources.
LIST ROLES                 -- Lists roles and shows superuser and login status.
REVOKE                     -- Remove privileges on database objects from roles.
SELECT                     -- Retrieve data from a Cassandra table.
TRUNCATE                   -- Remove all data from a table.
UPDATE                     -- Update columns in a row.
USE                        -- Connects the client session to a keyspace.

nodetool repair             # Repairs one or more tables.

COPY nomtable (colonne, colonne, ...) TO 'dump.csv';    # sauvegarde
nodetool snapshot                                       # sauvegarde
COPY nomtable (colonne, colonne, ...) FROM 'dump.csv';  # restoration
