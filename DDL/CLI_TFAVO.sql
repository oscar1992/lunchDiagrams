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

/* Create Foreign Key Constraints */

ALTER TABLE "CLI_TFAVO" ADD CONSTRAINT "FK_CLI_TFAV_ADM_TPROD"
	FOREIGN KEY ("FAVO_PROD") REFERENCES "ADM_TPROD" ("PROD_PROD") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "CLI_TFAVO" ADD CONSTRAINT "FK_CLI_TFAV_CLI_TNLON"
	FOREIGN KEY ("FAVO_NLON") REFERENCES "CLI_TNLON" ("NLON_NLON") ON DELETE No Action ON UPDATE No Action
;
