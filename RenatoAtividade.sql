USE ALSQL20962286

--------------------ATIVIDADE SQL-------------------------

--Nome: Renato Gonsalves de Melo Junior
--Data: 23/05/2019

-- 1) Valor total por regi�o no ano 2017.
SELECT RG.nome_regiao, venda_gasolina.ano, SUM(venda_gasolina.venda_mil_m3) AS venda_ano
FROM regiao RG
	 INNER JOIN uf ON uf.cod_regiao = RG.cod_regiao
	 INNER JOIN venda_gasolina venda_gasolina ON venda_gasolina.cod_uf = uf.cod_uf
WHERE venda_gasolina.ano = 2017
GROUP BY RG.nome_regiao, venda_gasolina.ano;

-- 2) Valor total por regi�o e ano.
SELECT RG.nome_regiao, venda_gasolina.ano, SUM(venda_gasolina.venda_mil_m3) AS venda_ano
FROM regiao RG
	 INNER JOIN uf ON uf.cod_regiao = RG.cod_regiao
	 INNER JOIN venda_gasolina venda_gasolina ON venda_gasolina.cod_uf = uf.cod_uf
GROUP BY RG.nome_regiao, venda_gasolina.ano;
	 

-- 5) Quantidade distribuida por regi�o.
SELECT	RG.nome_regiao, 
		SUM(venda_gasolina.qtd_distribuidoras) AS distribuidoras
FROM regiao RG
      INNER JOIN uf 
		ON uf.cod_regiao = RG.cod_regiao
	  INNER JOIN venda_gasolina AS venda_gasolina 
		ON venda_gasolina.cod_uf = uf.cod_uf
GROUP BY RG.nome_regiao


-- 7) Valores de venda no sudeste e apenas no Rio de Janeiro e em S�o Paulo
SELECT uf.nome_uf, SUM(venda_gasolina.venda_mil_m3) AS sudeste
FROM regiao RG
      INNER JOIN uf 
		ON uf.cod_regiao = RG.cod_regiao
	  INNER JOIN venda_gasolina AS venda_gasolina 
		ON venda_gasolina.cod_uf = uf.cod_uf
WHERE UF.nome_uf in ('S�o Paulo', 'Rio de Janeiro')
GROUP BY uf.nome_uf
UNION 
SELECT RG.nome_regiao, SUM(venda_gasolina.venda_mil_m3) AS Sudeste
FROM regiao RG
      INNER JOIN uf 
		ON uf.cod_regiao = RG.cod_regiao
	  INNER JOIN venda_gasolina AS venda_gasolina 
		ON venda_gasolina.cod_uf = uf.cod_uf
WHERE UF.nome_uf not in ('S�o Paulo', 'Rio de Janeiro')and rg.nome_regiao = 'sudeste'
GROUP BY RG.nome_regiao


-- 8) Regi�o de RJ e SP, mostrando valor de vendas e quantidade de distribuidoras
SELECT	RG.nome_regiao, uf.nome_uf, SUM(venda_gasolina.venda_mil_m3) AS venda_gasolina, SUM(venda_gasolina.qtd_distribuidoras) AS Dist
FROM regiao RG
INNER JOIN uf
ON uf.cod_regiao = RG.cod_regiao
INNER JOIN venda_gasolina AS venda_gasolina 
		ON venda_gasolina.cod_uf = uf.cod_uf
		WHERE UF.nome_uf in ('S�o Paulo', 'Rio de Janeiro')
		GROUP BY RG.nome_regiao, uf.nome_uf

-- 9) Mostrar todos os valores substituindo os nulos por zero
SELECT venda_mil_m3, ISNULL (qtd_distribuidoras,0) AS distribuidoras
FROM venda_gasolina

-- 10) Valor por ano de quantidade de distribuidoras e de venda
SELECT ano,SUM (venda_mil_m3) AS venda_gasolina, ISNULL(SUM(qtd_distribuidoras),0) AS distribuidoras
FROM venda_gasolina
		GROUP BY ano


-- 11) Com uma taxa fixa de 20% para venda e 12% para quantidade de distribuidoras e usando os valores
-- m�dios dos anos anteriores fazer uma previs�o para 2018.
SELECT AVG(venda_mil_m3)*1.2 AS taxa_vendas,
       AVG(qtd_distribuidoras)*1.12 AS taxa_dist
FROM venda_gasolina

-- 12) O mesmo que o exerc�cio 11 por�m para os dois �ltimos anos.
SELECT AVG(venda_mil_m3)*1.2 AS taxa_vendas,
       AVG(qtd_distribuidoras)*1.12 AS taxa_dist
FROM venda_gasolina
WHERE ano in (2016,2017);
 

 -- 13) Repitindo o exerc�cio anterior apenas para o �ltimo ano agrupando os valores por regi�o
 -- substituindo o nome da regi�o pela sigla da regi�o.
SELECT AVG(venda_mil_m3)*1.2 AS taxa_vendas,
       AVG(qtd_distribuidoras)*1.12 AS taxa_dist,

CASE  WHEN RG.nome_regiao = 'SUDESTE' THEN 'SUD'
      WHEN RG.nome_regiao = 'NORTE' THEN 'NOR'
	  WHEN RG.nome_regiao = 'NORDESTE' THEN 'NOD'
	  WHEN RG.nome_regiao = 'SUL' THEN 'SUL'
	  WHEN RG.nome_regiao = 'CENTRO-OESTE' THEN 'CO'end AS regiao

FROM uf
INNER JOIN venda_gasolina AS venda_gasolina ON venda_gasolina.cod_uf = uf.cod_uf
INNER JOIN regiao RG ON RG.cod_regiao = uf.cod_regiao

GROUP BY RG.nome_regiao 


-- 14) Com o UF e ano apresentar as m�dias de valores de venda, com m�dias superiores a 400.00, 
-- classificando em ordem decrescente.
SELECT venda_gasolina.ano, UF.nome_uf, AVG(CAST(venda_gasolina.venda_mil_m3 as int)) AS media_vendas
FROM UF
LEFT JOIN venda_gasolina venda_gasolina
		ON uf.cod_uf = venda_gasolina.cod_uf
		GROUP BY venda_gasolina.ano, UF.nome_uf
		HAVING AVG(venda_mil_m3)> 400
		ORDER BY media_vendas DESC, ano

-- 15) Mesmo do exerc�cio anterior, por�m trazer a m�dia do �ltimo ano e m�dias acima de 600.00
SELECT venda_gasolina.ano, UF.nome_uf, AVG(CAST(venda_gasolina.venda_mil_m3 as int)) AS media_vendas
FROM UF
LEFT JOIN venda_gasolina venda_gasolina
		ON uf.cod_uf = venda_gasolina.cod_uf
		WHERE venda_gasolina.ano=2017
		GROUP BY venda_gasolina.ano, UF.nome_uf
		HAVING AVG(venda_mil_m3)> 600