/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 12.0 		*/
/*  Created On : 17-mar-2016 07:29:59 p.m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "CLI_TFAVO" CASCADE
;

/* Create Tables */

CREATE TABLE "CLI_TFAVO"
(
	"FAVO_FAVO" integer NOT NULL,
	"FAVO_PROD" integer NULL,
	"FAVO_NLON" integer NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "CLI_TFAVO" ADD CONSTRAINT "PK_CLI_TFAV"
	PRIMARY KEY ("FAVO_FAVO")
;

CREATE INDEX "IXFK_CLI_TFAV_ADM_TPROD" ON "CLI_TFAVO" ("FAVO_PROD" ASC)
;

CREATE INDEX "IXFK_CLI_TFAV_CLI_TNLON" ON "CLI_TFAVO" ("FAVO_NLON" ASC)
;


