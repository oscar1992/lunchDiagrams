/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 08:49:50 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "ADM_TITEM" CASCADE
;

/* Create Tables */

CREATE TABLE "ADM_TITEM"
(
	"ITEM_ITEM" integer NOT NULL,
	"ITEM_PROD" integer NULL,
	"ITEM_COMB" integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "ADM_TITEM" ADD CONSTRAINT "PK_ADM_TITEM"
	PRIMARY KEY ("ITEM_ITEM")
;

CREATE INDEX "IXFK_ADM_TITEM_ADM_TCOMB" ON "ADM_TITEM" ("ITEM_COMB" ASC)
;

CREATE INDEX "IXFK_ADM_TITEM_ADM_TPROD" ON "ADM_TITEM" ("ITEM_PROD" ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "ADM_TITEM" ADD CONSTRAINT "FK_ADM_TITEM_ADM_TCOMB"
	FOREIGN KEY ("ITEM_COMB") REFERENCES "ADM_TCOMB" ("COMB_COMB") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ADM_TITEM" ADD CONSTRAINT "FK_ADM_TITEM_ADM_TPROD"
	FOREIGN KEY ("ITEM_PROD") REFERENCES "ADM_TPROD" ("PROD_PROD") ON DELETE No Action ON UPDATE No Action
;
