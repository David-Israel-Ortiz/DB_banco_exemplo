CREATE ROLE desenvolvedores NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOBYPASSRLS CONNECTION LIMIT 10;
ALTER ROLE desenvolvedores PASSWORD '123';

--CREATE ROLE david LOGIN PASSWORD '123' IN ROLE desenvolvedores;

DROP ROLE david;

CREATE ROLE david LOGIN PASSWORD '123' ROLE desenvolvedores ;

--CREATE ROLE david LOGIN PASSWORD '123' ROLE desenvolvedores ;
--CREATE TABLE teste (nome varchar);
--GRANT ALL ON TABLE teste TO desenvolvedores;
--CREATE ROLE david LOGIN PASSWORD '123';
--CREATE ROLE david LOGIN PASSWORD '123' IN ROLE desenvolvedores;
--SELECT nome FROM teste;
--REVOKE desenvolvedores FROM david;
SELECT nome FROM teste