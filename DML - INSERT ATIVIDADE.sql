USE ALSQL

INSERT INTO REGIAO (cod_regiao,nome_regiao)
VALUES 
			(1,'NORTE'),
			(2,'NORDESTE'),
			(3,'SUDESTE'),
			(4,'SUL'),
			(5,'CENTRO-OESTE')
		

INSERT INTO uf (cod_uf,cod_regiao,nome_uf)
VALUES	
			(1,1,'Rond�nia'),
			(2,1,'Acre'),
			(3,1,'Amazonas'), 
			(4,1,'Roraima'), 
			(5,1,'Par�'), 
			(6,1,'Amap�'),
			(7,1,'Tocantins'), 
			(8,2,'Maranh�o'), 
			(9,2,'Piau�'), 
			(10,2,'Cear�'), 
			(11,2,'Rio Grande do Norte'), 
			(12,2,'Para�ba'), 
			(13,2,'Pernambuco'),
			(14,2,'Alagoas'),
			(15,2,'Sergipe'),
			(16,2,'Bahia'),
			(17,3,'Minas Gerais'),
			(18,3,'Esp�rito Santo'),
			(19,3,'Rio de Janeiro'),
			(20,3,'S�o Paulo'),
			(21,4,'Paran�'),
			(22,4,'Santa Catarina'),
			(23,4,'Rio Grande do Sul'), 
			(24,5,'Mato Grosso do Sul'), 
			(25,5,'Mato Grosso'),
			(26,5,'Goi�s'),
			(27,5,'Distrito Federal') 

			truncate table venda_gasolina
INSERT INTO venda_gasolina (cod_uf,qtd_distribuidoras,venda_mil_m3,ano)
VALUES 		

(1,NULL,211,2008),
(2,NULL,70,2008),
(3,NULL,389,2008),
(4,NULL,62,2008),
(5,NULL,559,2008),
(6,NULL,83,2008),
(7,NULL,174,2008),
(8,NULL,372,2008),
(9,NULL,246,2008),
(10,NULL,616,2008),
(11,NULL,304,2008),
(12,NULL,341,2008),
(13,NULL,677,2008),
(14,NULL,172,2008),
(15,NULL,197,2008),
(16,NULL,1050,2008),
(17,NULL,2925,2008),
(18,NULL,485,2008),
(19,NULL,1616,2008),
(20,NULL,7020,2008),
(21,NULL,1700,2008),
(22,NULL,1376,2008),
(23,NULL,2122,2008),
(24,NULL,356,2008),
(25,NULL,356,2008),
(26,NULL,922,2008),
(27,NULL,773,2008),
(1,NULL,234,2009),
(2,NULL,76,2009),
(3,NULL,403,2009),
(4,NULL,75,2009),
(5,NULL,585,2009),
(6,NULL,86,2009),
(7,NULL,178,2009),
(8,NULL,392,2009),
(9,NULL,279,2009),
(10,NULL,666,2009),
(11,NULL,334,2009),
(12,NULL,359,2009),
(13,NULL,701,2009),
(14,NULL,179,2009),
(15,NULL,210,2009),
(16,NULL,1056,2009),
(17,NULL,3008,2009),
(18,NULL,511,2009),
(19,NULL,1637,2009),
(20,NULL,6697,2009),
(21,NULL,1604,2009),
(22,NULL,1452,2009),
(23,NULL,2246,2009),
(24,NULL,373,2009),
(25,NULL,355,2009),
(26,NULL,951,2009),
(27,NULL,762,2009),
(1,NULL,286,2010),
(2,NULL,95,2010),
(3,NULL,469,2010),
(4,NULL,86,2010),
(5,NULL,675,2010),
(6,NULL,99,2010),
(7,NULL,217,2010),
(8,NULL,522,2010),
(9,NULL,345,2010),
(10,NULL,820,2010),
(11,NULL,404,2010),
(12,NULL,445,2010),
(13,NULL,899,2010),
(14,NULL,245,2010),
(15,NULL,259,2010),
(16,NULL,1273,2010),
(17,NULL,3678,2010),
(18,NULL,638,2010),
(19,NULL,1867,2010),
(20,NULL,7436,2010),
(21,NULL,1886,2010),
(22,NULL,1787,2010),
(23,NULL,2583,2010),
(24,NULL,451,2010),
(25,NULL,394,2010),
(26,NULL,1084,2010),
(27,NULL,900,2010),
(1,NULL,325,2011),
(2,NULL,107,2011),
(3,NULL,521,2011),
(4,NULL,88,2011),
(5,NULL,769,2011),
(6,NULL,110,2011),
(7,NULL,250,2011),
(8,NULL,629,2011),
(9,NULL,374,2011),
(10,NULL,943,2011),
(11,NULL,485,2011),
(12,NULL,512,2011),
(13,NULL,1107,2011),
(14,NULL,303,2011),
(15,NULL,298,2011),
(16,NULL,1589,2011),
(17,NULL,4100,2011),
(18,NULL,716,2011),
(19,NULL,2280,2011),
(20,NULL,9462,2011),
(21,NULL,2403,2011),
(22,NULL,2009,2011),
(23,NULL,2814,2011),
(24,NULL,552,2011),
(25,NULL,488,2011),
(26,NULL,1257,2011),
(27,NULL,1002,2011),
(1,NULL,365,2012),
(2,NULL,119,2012),
(3,NULL,569,2012),
(4,NULL,99,2012),
(5,NULL,910,2012),
(6,NULL,128,2012),
(7,NULL,296,2012),
(8,NULL,751,2012),
(9,NULL,455,2012),
(10,NULL,1121,2012),
(11,NULL,562,2012),
(12,NULL,588,2012),
(13,NULL,1290,2012),
(14,NULL,364,2012),
(15,NULL,340,2012),
(16,NULL,1843,2012),
(17,NULL,4459,2012),
(18,NULL,822,2012),
(19,NULL,2471,2012),
(20,NULL,10306,2012),
(21,NULL,2771,2012),
(22,NULL,2225,2012),
(23,NULL,3081,2012),
(24,NULL,643,2012),
(25,NULL,593,2012),
(26,NULL,1446,2012),
(27,NULL,1079,2012),
(1,NULL,378,2013),
(2,NULL,125,2013),
(3,NULL,591,2013),
(4,NULL,109,2013),
(5,NULL,996,2013),
(6,NULL,138,2013),
(7,NULL,312,2013),
(8,NULL,803,2013),
(9,NULL,500,2013),
(10,NULL,1216,2013),
(11,NULL,606,2013),
(12,NULL,625,2013),
(13,NULL,1379,2013),
(14,NULL,401,2013),
(15,NULL,367,2013),
(16,NULL,1944,2013),
(17,NULL,4655,2013),
(18,NULL,862,2013),
(19,NULL,2617,2013),
(20,NULL,10477,2013),
(21,NULL,2753,2013),
(22,NULL,2364,2013),
(23,NULL,3297,2013),
(24,NULL,671,2013),
(25,NULL,587,2013),
(26,NULL,1530,2013),
(27,NULL,1123,2013),
(1,NULL,407,2014),
(2,NULL,138,2014),
(3,NULL,627,2014),
(4,NULL,123,2014),
(5,NULL,1099,2014),
(6,NULL,154,2014),
(7,NULL,350,2014),
(8,NULL,887,2014),
(9,NULL,569,2014),
(10,NULL,1349,2014),
(11,NULL,652,2014),
(12,NULL,686,2014),
(13,NULL,1497,2014),
(14,NULL,442,2014),
(15,NULL,403,2014),
(16,NULL,2145,2014),
(17,NULL,4986,2014),
(18,NULL,935,2014),
(19,NULL,2861,2014),
(20,NULL,10850,2014),
(21,NULL,2887,2014),
(22,NULL,2571,2014),
(23,NULL,3553,2014),
(24,NULL,718,2014),
(25,NULL,662,2014),
(26,NULL,1640,2014),
(27,NULL,1172,2014),
(1,NULL,417,2015),
(2,NULL,140,2015),
(3,NULL,617,2015),
(4,NULL,124,2015),
(5,NULL,1132,2015),
(6,NULL,154,2015),
(7,NULL,348,2015),
(8,NULL,890,2015),
(9,NULL,580,2015),
(10,NULL,1331,2015),
(11,NULL,645,2015),
(12,NULL,662,2015),
(13,NULL,1378,2015),
(14,NULL,426,2015),
(15,NULL,391,2015),
(16,NULL,2051,2015),
(17,NULL,4296,2015),
(18,NULL,917,2015),
(19,NULL,2734,2015),
(20,NULL,9437,2015),
(21,NULL,2591,2015),
(22,NULL,2561,2015),
(23,NULL,3495,2015),
(24,NULL,664,2015),
(25,NULL,566,2015),
(26,NULL,1470,2015),
(27,NULL,1122,2015),
(1,NULL,432,2016),
(2,NULL,137,2016),
(3,NULL,634,2016),
(4,NULL,130,2016),
(5,NULL,1155,2016),
(6,NULL,152,2016),
(7,NULL,364,2016),
(8,NULL,928,2016),
(9,NULL,596,2016),
(10,NULL,1372,2016),
(11,NULL,652,2016),
(12,NULL,695,2016),
(13,NULL,1441,2016),
(14,NULL,454,2016),
(15,NULL,398,2016),
(16,NULL,2211,2016),
(17,NULL,4513,2016),
(18,NULL,947,2016),
(19,NULL,2685,2016),
(20,NULL,9991,2016),
(21,NULL,2882,2016),
(22,NULL,2701,2016),
(23,NULL,3463,2016),
(24,NULL,742,2016),
(25,NULL,617,2016),
(26,NULL,1531,2016),
(27,NULL,1200,2016),
(1,5,436,2017),
(2,5,137,2017),
(3,1,644,2017),
(4,18,137,2017),
(5,9,1154,2017),
(6,2,155,2017),
(7,5,379,2017),
(8,2,955,2017),
(9,20,608,2017),
(10,4,1382,2017),
(11,6,661,2017),
(12,2,713,2017),
(13,3,1495,2017),
(14,1,456,2017),
(15,4,401,2017),
(16,2,2251,2017),
(17,2,4570,2017),
(18,20,938,2017),
(19,14,2523,2017),
(20,54,10472,2017),
(21,33,3065,2017),
(22,17,2807,2017),
(23,13,3594,2017),
(24,4,767,2017),
(25,9,624,2017),
(26,11,1559,2017),
(27,27,1266,2017)