/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 18-mar-2016 03:54:25 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Create Tables */

CREATE TABLE ADM_TPROD
(
	PROD_PROD integer NOT NULL,
	PROD_NOMB varchar(100)	 NULL,
	PROD_IMAG bytea NULL,
	PROD_PREC varchar(50)	 NULL,
	PROD_CATE integer NULL,
	PROD_MARC integer NULL,
	PROD_GRUP integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE ADM_TPROD ADD CONSTRAINT PK_ADM_PRODUCTO
	PRIMARY KEY (PROD_PROD)
;

CREATE INDEX IXFK_ADM_TPRODUCTO_ADM_TCATE ON ADM_TPROD (PROD_CATE ASC)
;

CREATE INDEX IXFK_ADM_TPRODUCTO_ADM_TINFO ON ADM_TPROD ()
;

CREATE INDEX IXFK_ADM_TPRODUCTO_ADM_TMARC ON ADM_TPROD (PROD_MARC ASC)
;


