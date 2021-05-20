SELECT banco_numero, numero , nome FROM agencia;
SELECT numero, nome FROM cliente;
SELECT banco_numero , agencia_numero , numero , digito , cliente_numero FROM conta_corrente;
SELECT id, nome FROM tipi_transacao;
SELECT banco_numero , agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, vaor FROM cliente_transacoes;

SELECT count(1)FROM BANCO; --151
SELECT count(1)FROM agencia; --296
-- 296
SELECT count (distinct banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero= banco.numero;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;


SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM banco
RIGHT JOIN agencia ON banco.numero=agencia.banco_numero;

SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;

CREATE TABLE IF NOT EXISTS teste_a (id serial PRIMARY KEY, valor VARCHAR(10));
CREATE TABLE IF NOT EXISTS teste_b (id serial PRIMARY KEY, valor VARCHAR(10));

INSERT INTO teste_a (valor) VALUES ('teste1');
INSERT INTO teste_a (valor) VALUES ('teste2');
INSERT INTO teste_a (valor) VALUES ('teste3');
INSERT INTO teste_a (valor) VALUES ('teste4');

INSERT INTO teste_b (valor) VALUES ('teste_a');
INSERT INTO teste_b (valor) VALUES ('teste_b');
INSERT INTO teste_b (valor) VALUES ('teste_c');
INSERT INTO teste_b (valor) VALUES ('teste_d');

SELECT tbla.valor, tblb.valor
FROM teste_a tbla
CROSS JOIN teste_b tblb;

DROP TABLE IF EXISTS teste_a;
DROP TABLE IF EXISTS teste_b;


SELECT banco.nome,
		agencia.nome,
		conta_corrente.numero,
		conta_corrente.numero,
		cliente.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente 
--ON conta_corrente.banco_numero = agencia.banco_numero
ON conta_corrente.banco_numero = banco.numero
AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
 ON cliente.numero = conta_corrente.cliente_numero;
