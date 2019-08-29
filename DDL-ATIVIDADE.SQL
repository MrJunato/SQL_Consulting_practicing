-- Gerado por Oracle SQL Developer Data Modeler 17.4.0.355.2121
--   em:        2018-09-09 12:27:51 BRT
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012

--DROP DATABASE ALSQL

--CREATE DATABASE ALSQL

USE ALSQL


CREATE TABLE regiao (
    cod_regiao    SMALLINT NOT NULL,
    nome_regiao   VARCHAR(25)
)


ALTER TABLE REGIAO ADD constraint regiao_pk PRIMARY KEY CLUSTERED (COD_REGIAO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
   
   
CREATE TABLE uf (
    cod_uf       INTEGER NOT NULL,
    cod_regiao   SMALLINT NOT NULL,
    nome_uf      VARCHAR(50) NOT NULL
)


ALTER TABLE UF ADD constraint uf_pk PRIMARY KEY CLUSTERED (COD_UF)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
   

CREATE TABLE venda_gasolina (
    ano                  DECIMAL(4) NOT NULL,
    cod_uf               INTEGER NOT NULL,
	qtd_distribuidoras   INTEGER,
    venda_mil_m3         DECIMAL(8)
   )
 

ALTER TABLE UF
    ADD CONSTRAINT uf_reg_fk FOREIGN KEY ( cod_regiao )
        REFERENCES regiao ( cod_regiao )
ON DELETE NO ACTION 


ALTER TABLE VENDA_GASOLINA
    ADD CONSTRAINT venda_gasolina_uf_fk FOREIGN KEY ( cod_uf )
        REFERENCES uf ( cod_uf )
ON DELETE NO ACTION 



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              4
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0