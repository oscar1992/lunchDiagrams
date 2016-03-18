/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 07:16:09 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "ADM_TPROD" CASCADE
;

/* Create Tables */

CREATE TABLE "ADM_TPROD"
(
	"PROD_PROD" integer NOT NULL,
	"PROD_NOMB" varchar(100)	 NULL,
	"PROD_IMAG" bytea NULL,
	"PROD_PREC" varchar(50)	 NULL,
	"PROD_INFO" integer NULL,
	"PROD_CATE" integer NULL,
	"PROD_MARC" integer NULL,
	"PROD_GRUP" integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "ADM_TPROD" ADD CONSTRAINT "PK_ADM_PRODUCTO"
	PRIMARY KEY ("PROD_PROD")
;

CREATE INDEX "IXFK_ADM_TPRODUCTO_ADM_TCATE" ON "ADM_TPROD" ("PROD_CATE" ASC)
;

CREATE INDEX "IXFK_ADM_TPRODUCTO_ADM_TINFO" ON "ADM_TPROD" ("PROD_INFO" ASC)
;

CREATE INDEX "IXFK_ADM_TPRODUCTO_ADM_TMARC" ON "ADM_TPROD" ("PROD_MARC" ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "ADM_TPROD" ADD CONSTRAINT "FK_ADM_TPRODUCTO_ADM_TCATE"
	FOREIGN KEY ("PROD_CATE") REFERENCES "ADM_TCATE" ("CATE_CATE") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ADM_TPROD" ADD CONSTRAINT "FK_ADM_TPRODUCTO_ADM_TINFO"
	FOREIGN KEY ("PROD_INFO") REFERENCES "ADM_TINFO" ("INFO_INFO") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ADM_TPROD" ADD CONSTRAINT "FK_ADM_TPRODUCTO_ADM_TMARC"
	FOREIGN KEY ("PROD_MARC") REFERENCES "ADM_TMARC" ("MARC_MARC") ON DELETE No Action ON UPDATE No Action
;