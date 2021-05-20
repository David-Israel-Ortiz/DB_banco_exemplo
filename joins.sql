SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;

WITH tbl_tmp_banco AS(
	SELECT numero,nome
	FROM banco
)	
SELECT numero, nome
FROM tbl_tmp_banco;

WITH params AS (
	SELECT 213 AS banco_numero
),tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
	JOIN params ON params.banco_numero = banco.numero
)
SELECT numero, nome FROM 
tbl_tmp_banco;